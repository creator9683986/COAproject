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
            "localhost:50052",
            grpc::InsecureChannelCredentials()
        );
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

    std::this_thread::sleep_for(std::chrono::seconds(1));

    KafkaConsumer consumer("localhost:9092", "user-registration", "test-group");



    /// Test kafak topic
    auto msgs = consumer.consumeBatch(5, 500);
     ASSERT_TRUE(!msgs.empty());

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
    req.set_login("newuser");
    req.set_password("newpass");
    req.set_email("new@example.com");
    auth::User resp;

    auto st = service_impl_->RegisterUser(&ctx, &req, &resp);
    EXPECT_TRUE(st.ok() || st.error_code() == grpc::StatusCode::ALREADY_EXISTS);

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

    grpc::ServerContext context;
    promo::CreatePromoCodeRequest create_req;
    create_req.set_token("testuser");
    create_req.set_title("Test Promo");
    create_req.set_description("Test Description");
    create_req.set_discount(10.5);
    create_req.set_code("TEST123");

    promo::PromoCode create_resp;
    grpc::Status status = service_impl_Promo->CreatePromoCode(&context, &create_req, &create_resp);
    EXPECT_TRUE(status.ok());
    EXPECT_GT(create_resp.id(), 0);
    EXPECT_EQ(create_resp.title(), "Test Promo");

    promo::GetPromoCodeRequest get_req;
    get_req.set_token("testuser");
    get_req.set_promo_id(create_resp.id());

    promo::PromoCode get_resp;
    status = service_impl_Promo->GetPromoCodeById(&context, &get_req, &get_resp);
    EXPECT_TRUE(status.ok());
    EXPECT_EQ(get_resp.id(), create_resp.id());
    EXPECT_EQ(get_resp.title(), "Test Promo");
}

// TEST_F(AuthServiceTest, LoginTest) {
//     grpc::ServerContext ctx;
//     auth::LoginRequest req;
//     req.set_login("testuser");
//     req.set_password("testpass");
//     auth::LoginResponse resp;

//     auto st = service_impl_->Login(&ctx, &req, &resp);
//     EXPECT_TRUE(st.ok());
//     EXPECT_FALSE(resp.token().empty());
//     EXPECT_EQ(resp.user().login(), "testuser");
//     EXPECT_EQ(resp.user().email(), "test@example.com");
// }

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

// TEST_F(AuthServiceTest, GetProfileTest) {
//     grpc::ServerContext ctx;
//     auth::GetProfileRequest req;
//     req.set_token(token_);
//     auth::User resp;

//     auto st = service_impl_->GetProfile(&ctx, &req, &resp);
//     EXPECT_TRUE(st.ok());
//     EXPECT_EQ(resp.login(),      "testuser");
//     EXPECT_EQ(resp.email(),      "newemail@example.com");
//     EXPECT_EQ(resp.first_name(), "Test");
//     EXPECT_EQ(resp.last_name(),  "User");
//     EXPECT_EQ(resp.birth_date(),"1990-01-01");
//     EXPECT_EQ(resp.phone(),     "123456789");
// }

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
    reqLogin.set_login("newuser");
    reqLogin.set_password("newpass");
    auth::LoginResponse respLogin;

    auto st = service_impl_->Login(&ctxLogin, &reqLogin, &respLogin);
    EXPECT_TRUE(st.ok());
    EXPECT_FALSE(respLogin.token().empty());
    EXPECT_EQ(respLogin.user().login(), "newuser");
    EXPECT_EQ(respLogin.user().email(), "new@example.com");

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
    EXPECT_EQ(delResp.login(), "newuser");

    auth::GetProfileRequest getReq2;
    getReq2.set_token(token_);
    auth::User getResp2;
    grpc::ServerContext ctx3;
    st = service_impl_->GetProfile(&ctx3, &getReq2, &getResp2);
    EXPECT_FALSE(st.ok());
}

class DummyAuthService : public auth::AuthService::Service {
    public:
        Status GetProfile(ServerContext* /*ctx*/,
                          const auth::GetProfileRequest* /*req*/,
                          auth::User* resp) override {
            resp->set_id(123);
            resp->set_login("dummy");
            return Status::OK;
        }
    };
    
    class DummyPromoService : public promo::PromoService::Service {
    public:
        Status GetPromoCodeById(ServerContext* /*ctx*/,
                                const promo::GetPromoCodeRequest* req,
                                promo::PromoCode* resp) override {
            resp->set_id(req->promo_id());
            return Status::OK;
        }
        Status ClickPromoCode(ServerContext* /*ctx*/,
                              const promo::ClickPromoCodeRequest* req,
                              promo::PromoCode* resp) override {
            resp->set_id(req->promo_id());
            return Status::OK;
        }
        Status CommentPromoCode(ServerContext* /*ctx*/,
                                const promo::CommentPromoCodeRequest* req,
                                promo::PromoCode* resp) override {
            resp->set_id(req->promo_id());
            return Status::OK;
        }
    };
    
    class PromoKafkaTest : public ::testing::Test {
    protected:
        void SetUp() override {
            {
                ServerBuilder b;
                b.AddListeningPort("localhost:50051", InsecureServerCredentials());
                b.RegisterService(&auth_svc_);
                auth_server_ = b.BuildAndStart();
            }
            {
                ServerBuilder b;
                b.AddListeningPort("localhost:50052", InsecureServerCredentials());
                b.RegisterService(&promo_svc_);
                promo_server_ = b.BuildAndStart();
            }
            auth_channel_  = grpc::CreateChannel("localhost:50051", grpc::InsecureChannelCredentials());
            promo_channel_ = grpc::CreateChannel("localhost:50052", grpc::InsecureChannelCredentials());
            proxy_ = std::make_unique<gateway::PromoServiceProxyImpl>(
                promo_channel_, auth_channel_
            );
        }
    
        void TearDown() override {
            auth_server_->Shutdown();
            promo_server_->Shutdown();
        }
    
        DummyAuthService   auth_svc_;
        DummyPromoService  promo_svc_;
        std::unique_ptr<Server> auth_server_, promo_server_;
        std::shared_ptr<grpc::Channel> auth_channel_, promo_channel_;
        std::unique_ptr<gateway::PromoServiceProxyImpl> proxy_;
    };
    
    std::string consumeOne(const std::string& topic) {
        std::this_thread::sleep_for(std::chrono::seconds(1));
        KafkaConsumer c("localhost:9092", topic, "test-group");
        auto msgs = c.consumeBatch(1, 500);
        if (msgs.empty()) return "";
        return msgs[0];
    }
    
    TEST_F(PromoKafkaTest, GetPromoCodeById_SendsKafka) {
        ServerContext ctx;
        promo::GetPromoCodeRequest req;
        req.set_token("any-token");
        req.set_promo_id(42);
        promo::PromoCode resp;
        auto st = proxy_->GetPromoCodeById(&ctx, &req, &resp);
        ASSERT_TRUE(st.ok());


        /// Test Kafka topic
        std::string m = consumeOne("promo-view");
        ASSERT_FALSE(m.empty());
        EXPECT_NE(m.find("viewed promo 42"), std::string::npos);
    }
    
    TEST_F(PromoKafkaTest, ClickPromoCode_SendsKafka) {
        ServerContext ctx;
        promo::ClickPromoCodeRequest req;
        req.set_user_id("user123");
        req.set_promo_id(73);
        promo::PromoCode resp;
        auto st = proxy_->ClickPromoCode(&ctx, &req, &resp);
        ASSERT_TRUE(st.ok());
        std::string m = consumeOne("promo-click");
        ASSERT_FALSE(m.empty());
        EXPECT_NE(m.find("clicked promo 73"), std::string::npos);
    }
    
    TEST_F(PromoKafkaTest, CommentPromoCode_SendsKafka) {
        ServerContext ctx;
        promo::CommentPromoCodeRequest req;
        req.set_user_id("userABC");
        req.set_promo_id(99);
        req.set_comment("Great!");
        promo::PromoCode resp;
        auto st = proxy_->CommentPromoCode(&ctx, &req, &resp);
        ASSERT_TRUE(st.ok());
        std::string m = consumeOne("promo-comment");
        ASSERT_FALSE(m.empty());
        EXPECT_NE(m.find("commented on promo 99"), std::string::npos);
    }
    



    int main(int argc, char** argv) {
        ::testing::InitGoogleTest(&argc, argv);
        return RUN_ALL_TESTS();
    }