// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: auth.proto

#include "auth.pb.h"
#include "auth.grpc.pb.h"

#include <functional>
#include <grpcpp/support/async_stream.h>
#include <grpcpp/support/async_unary_call.h>
#include <grpcpp/impl/channel_interface.h>
#include <grpcpp/impl/client_unary_call.h>
#include <grpcpp/support/client_callback.h>
#include <grpcpp/support/message_allocator.h>
#include <grpcpp/support/method_handler.h>
#include <grpcpp/impl/rpc_service_method.h>
#include <grpcpp/support/server_callback.h>
#include <grpcpp/impl/codegen/server_callback_handlers.h>
#include <grpcpp/server_context.h>
#include <grpcpp/impl/service_type.h>
#include <grpcpp/support/sync_stream.h>
namespace auth {

static const char* AuthService_method_names[] = {
  "/auth.AuthService/RegisterUser",
  "/auth.AuthService/Login",
  "/auth.AuthService/UpdateProfile",
  "/auth.AuthService/GetProfile",
};

std::unique_ptr< AuthService::Stub> AuthService::NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options) {
  (void)options;
  std::unique_ptr< AuthService::Stub> stub(new AuthService::Stub(channel, options));
  return stub;
}

AuthService::Stub::Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options)
  : channel_(channel), rpcmethod_RegisterUser_(AuthService_method_names[0], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  , rpcmethod_Login_(AuthService_method_names[1], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  , rpcmethod_UpdateProfile_(AuthService_method_names[2], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  , rpcmethod_GetProfile_(AuthService_method_names[3], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  {}

::grpc::Status AuthService::Stub::RegisterUser(::grpc::ClientContext* context, const ::auth::RegisterUserRequest& request, ::auth::User* response) {
  return ::grpc::internal::BlockingUnaryCall< ::auth::RegisterUserRequest, ::auth::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_RegisterUser_, context, request, response);
}

void AuthService::Stub::async::RegisterUser(::grpc::ClientContext* context, const ::auth::RegisterUserRequest* request, ::auth::User* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::auth::RegisterUserRequest, ::auth::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_RegisterUser_, context, request, response, std::move(f));
}

void AuthService::Stub::async::RegisterUser(::grpc::ClientContext* context, const ::auth::RegisterUserRequest* request, ::auth::User* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_RegisterUser_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::auth::User>* AuthService::Stub::PrepareAsyncRegisterUserRaw(::grpc::ClientContext* context, const ::auth::RegisterUserRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::auth::User, ::auth::RegisterUserRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_RegisterUser_, context, request);
}

::grpc::ClientAsyncResponseReader< ::auth::User>* AuthService::Stub::AsyncRegisterUserRaw(::grpc::ClientContext* context, const ::auth::RegisterUserRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncRegisterUserRaw(context, request, cq);
  result->StartCall();
  return result;
}

::grpc::Status AuthService::Stub::Login(::grpc::ClientContext* context, const ::auth::LoginRequest& request, ::auth::LoginResponse* response) {
  return ::grpc::internal::BlockingUnaryCall< ::auth::LoginRequest, ::auth::LoginResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_Login_, context, request, response);
}

void AuthService::Stub::async::Login(::grpc::ClientContext* context, const ::auth::LoginRequest* request, ::auth::LoginResponse* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::auth::LoginRequest, ::auth::LoginResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_Login_, context, request, response, std::move(f));
}

void AuthService::Stub::async::Login(::grpc::ClientContext* context, const ::auth::LoginRequest* request, ::auth::LoginResponse* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_Login_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::auth::LoginResponse>* AuthService::Stub::PrepareAsyncLoginRaw(::grpc::ClientContext* context, const ::auth::LoginRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::auth::LoginResponse, ::auth::LoginRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_Login_, context, request);
}

::grpc::ClientAsyncResponseReader< ::auth::LoginResponse>* AuthService::Stub::AsyncLoginRaw(::grpc::ClientContext* context, const ::auth::LoginRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncLoginRaw(context, request, cq);
  result->StartCall();
  return result;
}

::grpc::Status AuthService::Stub::UpdateProfile(::grpc::ClientContext* context, const ::auth::UpdateProfileRequest& request, ::auth::User* response) {
  return ::grpc::internal::BlockingUnaryCall< ::auth::UpdateProfileRequest, ::auth::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_UpdateProfile_, context, request, response);
}

void AuthService::Stub::async::UpdateProfile(::grpc::ClientContext* context, const ::auth::UpdateProfileRequest* request, ::auth::User* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::auth::UpdateProfileRequest, ::auth::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_UpdateProfile_, context, request, response, std::move(f));
}

void AuthService::Stub::async::UpdateProfile(::grpc::ClientContext* context, const ::auth::UpdateProfileRequest* request, ::auth::User* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_UpdateProfile_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::auth::User>* AuthService::Stub::PrepareAsyncUpdateProfileRaw(::grpc::ClientContext* context, const ::auth::UpdateProfileRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::auth::User, ::auth::UpdateProfileRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_UpdateProfile_, context, request);
}

::grpc::ClientAsyncResponseReader< ::auth::User>* AuthService::Stub::AsyncUpdateProfileRaw(::grpc::ClientContext* context, const ::auth::UpdateProfileRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncUpdateProfileRaw(context, request, cq);
  result->StartCall();
  return result;
}

::grpc::Status AuthService::Stub::GetProfile(::grpc::ClientContext* context, const ::auth::GetProfileRequest& request, ::auth::User* response) {
  return ::grpc::internal::BlockingUnaryCall< ::auth::GetProfileRequest, ::auth::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_GetProfile_, context, request, response);
}

void AuthService::Stub::async::GetProfile(::grpc::ClientContext* context, const ::auth::GetProfileRequest* request, ::auth::User* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::auth::GetProfileRequest, ::auth::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_GetProfile_, context, request, response, std::move(f));
}

void AuthService::Stub::async::GetProfile(::grpc::ClientContext* context, const ::auth::GetProfileRequest* request, ::auth::User* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_GetProfile_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::auth::User>* AuthService::Stub::PrepareAsyncGetProfileRaw(::grpc::ClientContext* context, const ::auth::GetProfileRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::auth::User, ::auth::GetProfileRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_GetProfile_, context, request);
}

::grpc::ClientAsyncResponseReader< ::auth::User>* AuthService::Stub::AsyncGetProfileRaw(::grpc::ClientContext* context, const ::auth::GetProfileRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncGetProfileRaw(context, request, cq);
  result->StartCall();
  return result;
}

AuthService::Service::Service() {
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      AuthService_method_names[0],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< AuthService::Service, ::auth::RegisterUserRequest, ::auth::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](AuthService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::auth::RegisterUserRequest* req,
             ::auth::User* resp) {
               return service->RegisterUser(ctx, req, resp);
             }, this)));
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      AuthService_method_names[1],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< AuthService::Service, ::auth::LoginRequest, ::auth::LoginResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](AuthService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::auth::LoginRequest* req,
             ::auth::LoginResponse* resp) {
               return service->Login(ctx, req, resp);
             }, this)));
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      AuthService_method_names[2],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< AuthService::Service, ::auth::UpdateProfileRequest, ::auth::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](AuthService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::auth::UpdateProfileRequest* req,
             ::auth::User* resp) {
               return service->UpdateProfile(ctx, req, resp);
             }, this)));
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      AuthService_method_names[3],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< AuthService::Service, ::auth::GetProfileRequest, ::auth::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](AuthService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::auth::GetProfileRequest* req,
             ::auth::User* resp) {
               return service->GetProfile(ctx, req, resp);
             }, this)));
}

AuthService::Service::~Service() {
}

::grpc::Status AuthService::Service::RegisterUser(::grpc::ServerContext* context, const ::auth::RegisterUserRequest* request, ::auth::User* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}

::grpc::Status AuthService::Service::Login(::grpc::ServerContext* context, const ::auth::LoginRequest* request, ::auth::LoginResponse* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}

::grpc::Status AuthService::Service::UpdateProfile(::grpc::ServerContext* context, const ::auth::UpdateProfileRequest* request, ::auth::User* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}

::grpc::Status AuthService::Service::GetProfile(::grpc::ServerContext* context, const ::auth::GetProfileRequest* request, ::auth::User* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}


}  // namespace auth

