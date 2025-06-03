#include <gtest/gtest.h>
#include <grpcpp/grpcpp.h>
#include "auth.grpc.pb.h"
#include "../src/AuthServiceProxyImpl.h"
#include "../src/PromoServiceProxyImpl.h"
#include "KafkaConsumer.cpp"
#include <thread>
#include <chrono>

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using grpc::InsecureServerCredentials;

class AuthServiceTest : public ::testing::Test {
protected:
    void SetUp() override {
        channel_ = grpc::CreateChannel(
            "localhost:50051",
            grpc::InsecureChannelCredentials()
        );
        channel_2 = grpc::CreateChannel(
            "localhost:50053",
            grpc::InsecureChannelCredentials()
        );

        promo_stub_ = promo::PromoService::NewStub(grpc::CreateChannel("localhost:50053", grpc::InsecureChannelCredentials()));
        service_impl_ = std::make_unique<gateway::AuthServiceProxyImpl>(channel_);
        service_impl_Promo = std::make_unique<gateway::PromoServiceProxyImpl>(channel_, channel_2);

        {
            grpc::ServerContext ctx;
            auth::RegisterUserRequest req;
            req.set_login("testuser");
            req.set_password("testpass");
            req.set_email("test@example.com");
            auth::User resp;
            auto st = service_impl_->RegisterUser(&ctx, &req, &resp);
            ASSERT_TRUE(st.ok() || st.error_code() == grpc::StatusCode::ALREADY_EXISTS)
                << "Initial RegisterUser failed: " << st.error_message();
        }
        {
            grpc::ServerContext ctx;
            auth::LoginRequest req;
            req.set_login("testuser");
            req.set_password("testpass");
            auth::LoginResponse resp;
            auto st = service_impl_->Login(&ctx, &req, &resp);
            ASSERT_TRUE(st.ok()) << "Initial Login failed: " << st.error_message();
            token_ = resp.token();
        }
    }

    std::unique_ptr<gateway::AuthServiceProxyImpl> service_impl_;
    std::unique_ptr<gateway::PromoServiceProxyImpl> service_impl_Promo;
    std::shared_ptr<grpc::Channel>                  channel_;
    std::shared_ptr<grpc::Channel>                  channel_2;
    std::string                                     token_;
    std::unique_ptr<promo::PromoService::Stub> promo_stub_;
};

/// Auth test, e2e
TEST_F(AuthServiceTest, RegisterUserTest) {
    grpc::ServerContext ctx;
    auth::RegisterUserRequest req;
    req.set_login("newuser");
    req.set_password("newpass");
    req.set_email("new@example.com");
    auth::User resp;

    auto st = service_impl_->RegisterUser(&ctx, &req, &resp);
    EXPECT_TRUE(st.ok() || st.error_code() == grpc::StatusCode::ALREADY_EXISTS);

    std::this_thread::sleep_for(std::chrono::seconds(3));


    KafkaConsumer consumer("localhost:9092", "user-registration", "test-group-temp-12345");

     grpc::ServerContext ctxLogin;
    auth::LoginRequest reqLogin;
    reqLogin.set_login("newuser");
    reqLogin.set_password("newpass");
    auth::LoginResponse respLogin;

    st = service_impl_->Login(&ctxLogin, &reqLogin, &respLogin);
    EXPECT_TRUE(st.ok());
    EXPECT_FALSE(respLogin.token().empty());
    EXPECT_EQ(respLogin.user().login(), "newuser");
    EXPECT_EQ(respLogin.user().email(), "new@example.com");
}

/// 2e2
TEST_F(AuthServiceTest, Promo) {
    grpc::ServerContext ctx;
    auth::RegisterUserRequest req;
    req.set_login("testuser");
    req.set_password("testpass");
    req.set_email("test@example.com");
    auth::User resp;

    auto st = service_impl_->RegisterUser(&ctx, &req, &resp);
    EXPECT_TRUE(st.ok() || st.error_code() == grpc::StatusCode::ALREADY_EXISTS);

     grpc::ServerContext ctxLogin;
    auth::LoginRequest reqLogin;
    reqLogin.set_login("testuser");
    reqLogin.set_password("testpass");
    auth::LoginResponse respLogin;

     st = service_impl_->Login(&ctxLogin, &reqLogin, &respLogin);
    EXPECT_TRUE(st.ok());
    EXPECT_FALSE(respLogin.token().empty());
    EXPECT_EQ(respLogin.user().login(), "testuser");
    EXPECT_EQ(respLogin.user().email(), "test@example.com");

    grpc::ClientContext context;
    promo::CreatePromoCodeRequest create_req;
    create_req.set_token(token_);
    create_req.set_title("Test Promo");
    create_req.set_description("Test Description");
    create_req.set_discount(10.5);
    create_req.set_code("TEST123");

    promo::PromoCode create_resp;
    grpc::Status status = promo_stub_->CreatePromoCode(&context, create_req, &create_resp);
    EXPECT_TRUE(status.ok());
    EXPECT_GT(create_resp.id(), 0);
    EXPECT_EQ(create_resp.title(), "Test Promo");

    promo::GetPromoCodeRequest get_req;
    get_req.set_token("testuser");
    get_req.set_promo_id(create_resp.id());
    grpc::ClientContext context2;

    promo::PromoCode get_resp;
    status = promo_stub_->GetPromoCodeById(&context2, get_req, &get_resp);
    EXPECT_TRUE(status.ok());
    EXPECT_EQ(get_resp.id(), create_resp.id());
    EXPECT_EQ(get_resp.title(), "Test Promo");
}


/// Auth test 
TEST_F(AuthServiceTest, UpdateProfileTest) {
    grpc::ServerContext ctx;
    auth::UpdateProfileRequest req;
    req.set_token(token_);
    req.set_first_name("Test");
    req.set_last_name("User");
    req.set_birth_date("1990-01-01");
    req.set_email("newemail@example.com");
    req.set_phone("123456789");
    auth::User resp;

    auto st = service_impl_->UpdateProfile(&ctx, &req, &resp);
    EXPECT_TRUE(st.ok());
    EXPECT_EQ(resp.first_name(), "Test");
    EXPECT_EQ(resp.last_name(),  "User");
    EXPECT_EQ(resp.birth_date(), "1990-01-01");
    EXPECT_EQ(resp.email(),      "newemail@example.com");
    EXPECT_EQ(resp.phone(),      "123456789");

    grpc::ServerContext ctxGet;
    auth::GetProfileRequest reqGet;
    reqGet.set_token(token_);
    auth::User respGet;

     st = service_impl_->GetProfile(&ctxGet, &reqGet, &respGet);
    EXPECT_TRUE(st.ok());
    EXPECT_EQ(respGet.email(),      "newemail@example.com");
    EXPECT_EQ(respGet.first_name(), "Test");
    EXPECT_EQ(respGet.last_name(),  "User");
    EXPECT_EQ(respGet.birth_date(),"1990-01-01");
    EXPECT_EQ(respGet.phone(),     "123456789");
}

/// Auth test  
TEST_F(AuthServiceTest, DeleteUserTest) {
    grpc::ServerContext ctx;
    auth::DeleteUserRequest req;
    req.set_token(token_);
    auth::User delResp;

    auto st = service_impl_->DeleteUser(&ctx, &req, &delResp);
    EXPECT_TRUE(st.ok());
    EXPECT_EQ(delResp.login(), "testuser");

    auth::GetProfileRequest getReq;
    getReq.set_token(token_);
    auth::User getResp;
    grpc::ServerContext ctx2;
    st = service_impl_->GetProfile(&ctx2, &getReq, &getResp);
    EXPECT_FALSE(st.ok());
}

/// e2e test 
TEST_F(AuthServiceTest, DeleteUserTest2e2) {

    grpc::ServerContext ctxLogin;
    auth::LoginRequest reqLogin;
    reqLogin.set_login("testuser");
    reqLogin.set_password("testpass");
    auth::LoginResponse respLogin;

    auto st = service_impl_->Login(&ctxLogin, &reqLogin, &respLogin);
    EXPECT_TRUE(st.ok());
    EXPECT_FALSE(respLogin.token().empty());
    EXPECT_EQ(respLogin.user().login(), "testuser");
    EXPECT_EQ(respLogin.user().email(), "test@example.com");

    auth::GetProfileRequest getReq;
    getReq.set_token(token_);
    auth::User getResp;
    grpc::ServerContext ctx2;
    st = service_impl_->GetProfile(&ctx2, &getReq, &getResp);
    EXPECT_TRUE(st.ok());

    grpc::ServerContext ctx;
    auth::DeleteUserRequest req;
    req.set_token(token_);
    auth::User delResp;

     st = service_impl_->DeleteUser(&ctx, &req, &delResp);
    EXPECT_TRUE(st.ok());
    EXPECT_EQ(delResp.login(), "testuser");

    auth::GetProfileRequest getReq2;
    getReq2.set_token(token_);
    auth::User getResp2;
    grpc::ServerContext ctx3;
    st = service_impl_->GetProfile(&ctx3, &getReq2, &getResp2);
    EXPECT_FALSE(st.ok());
}

    int main(int argc, char** argv) {
        ::testing::InitGoogleTest(&argc, argv);
        return RUN_ALL_TESTS();
    }