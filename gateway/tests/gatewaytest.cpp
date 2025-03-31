#include <gtest/gtest.h>
#include <grpcpp/grpcpp.h>
#include "auth.grpc.pb.h"

class AuthServiceTest : public ::testing::Test {
protected:
    void SetUp() override {
        channel = grpc::CreateChannel("localhost:50051", grpc::InsecureChannelCredentials());
        stub = auth::AuthService::NewStub(channel);

        auth::RegisterUserRequest regReq;
        regReq.set_login("testuser");
        regReq.set_password("testpass");
        regReq.set_email("test@example.com");
        auth::User regResp;
        grpc::ClientContext regContext;
        grpc::Status regStatus = stub->RegisterUser(&regContext, regReq, &regResp);
        if (!regStatus.ok() && regStatus.error_code() != grpc::StatusCode::ALREADY_EXISTS) {
            FAIL() << "Registration failed: " << regStatus.error_message();
        }

        auth::LoginRequest loginReq;
        loginReq.set_login("testuser");
        loginReq.set_password("testpass");
        auth::LoginResponse loginResp;
        grpc::ClientContext loginContext;
        grpc::Status loginStatus = stub->Login(&loginContext, loginReq, &loginResp);
        ASSERT_TRUE(loginStatus.ok()) << "Login failed: " << loginStatus.error_message();
        token = loginResp.token();
    }

    std::string token;
    std::shared_ptr<grpc::Channel> channel;
    std::unique_ptr<auth::AuthService::Stub> stub;
};

TEST_F(AuthServiceTest, RegisterUserTest) {
    auth::RegisterUserRequest request;
    request.set_login("newuser");
    request.set_password("newpass");
    request.set_email("new@example.com");

    auth::User response;
    grpc::ClientContext context;
    grpc::Status status = stub->RegisterUser(&context, request, &response);

    EXPECT_TRUE(status.ok() || status.error_code() == grpc::StatusCode::ALREADY_EXISTS)
        << "Registration failed: " << status.error_message();
    if(status.ok()){
        EXPECT_EQ(response.login(), "newuser");
        EXPECT_EQ(response.email(), "new@example.com");
        EXPECT_FALSE(response.created_at().empty());
        EXPECT_FALSE(response.updated_at().empty());
        EXPECT_GT(response.id(), 0);
    }
}

TEST_F(AuthServiceTest, LoginTest) {
    auth::RegisterUserRequest regRequest;
    regRequest.set_login("loginuser");
    regRequest.set_password("loginpass");
    regRequest.set_email("login@example.com");
    auth::User regResponse;
    grpc::ClientContext regContext;
    grpc::Status regStatus = stub->RegisterUser(&regContext, regRequest, &regResponse);
    EXPECT_TRUE(regStatus.ok() || regStatus.error_code() == grpc::StatusCode::ALREADY_EXISTS)
        << "Registration for login test failed: " << regStatus.error_message();

    auth::LoginRequest loginReq;
    loginReq.set_login("loginuser");
    loginReq.set_password("loginpass");

    auth::LoginResponse loginResp;
    grpc::ClientContext loginContext;
    grpc::Status status = stub->Login(&loginContext, loginReq, &loginResp);

    EXPECT_TRUE(status.ok()) << "Login failed: " << status.error_message();
    EXPECT_FALSE(loginResp.token().empty());
    EXPECT_EQ(loginResp.user().login(), "loginuser");
    EXPECT_EQ(loginResp.user().email(), "login@example.com");
}


TEST_F(AuthServiceTest, UpdateProfileTest) {
    auth::UpdateProfileRequest request;
    request.set_token(token);
    request.set_first_name("Test");
    request.set_last_name("User");
    request.set_birth_date("1990-01-01");
    request.set_email("newemail@example.com");
    request.set_phone("123456789");

    auth::User response;
    grpc::ClientContext context;
    grpc::Status status = stub->UpdateProfile(&context, request, &response);

    EXPECT_TRUE(status.ok()) << "UpdateProfile failed: " << status.error_message();
    EXPECT_EQ(response.first_name(), "Test");
    EXPECT_EQ(response.last_name(), "User");
    EXPECT_EQ(response.birth_date(), "1990-01-01");
    EXPECT_EQ(response.email(), "newemail@example.com");
    EXPECT_EQ(response.phone(), "123456789");
}

TEST_F(AuthServiceTest, GetProfileTest) {
    auth::GetProfileRequest request;
    request.set_token(token);

    auth::User response;
    grpc::ClientContext context;
    grpc::Status status = stub->GetProfile(&context, request, &response);

    EXPECT_TRUE(status.ok()) << "GetProfile failed: " << status.error_message();
    EXPECT_EQ(response.login(), "testuser");
    EXPECT_EQ(response.email(), "newemail@example.com");
    EXPECT_EQ(response.first_name(), "Test");
    EXPECT_EQ(response.last_name(), "User");
    EXPECT_EQ(response.birth_date(), "1990-01-01");
    EXPECT_EQ(response.phone(), "123456789");
}

TEST_F(AuthServiceTest, DeleteUserTest) {
    auth::DeleteUserRequest request;
    request.set_token(token);

    auth::User deleteResponse;
    grpc::ClientContext context;
    grpc::Status status = stub->DeleteUser(&context, request, &deleteResponse);
    EXPECT_TRUE(status.ok()) << "DeleteUser failed: " << status.error_message();
    EXPECT_EQ(deleteResponse.login(), "testuser");

    auth::GetProfileRequest getRequest;
    getRequest.set_token(token);
    auth::User getResponse;
    grpc::ClientContext getContext;
    status = stub->GetProfile(&getContext, getRequest, &getResponse);
    EXPECT_FALSE(status.ok());
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
