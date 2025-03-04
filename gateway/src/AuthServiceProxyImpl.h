#ifndef AUTH_SERVICE_PROXY_IMPL_H
#define AUTH_SERVICE_PROXY_IMPL_H

#include <memory>
#include <grpcpp/grpcpp.h>
#include "auth.grpc.pb.h"

namespace gateway {

// Прокси-реализация сервиса аутентификации, перенаправляющая запросы к настоящему Auth Service.
class AuthServiceProxyImpl final : public auth::AuthService::Service {
public:
    // Конструктор принимает канал, через который будет осуществляться связь с Auth Service.
    explicit AuthServiceProxyImpl(std::shared_ptr<grpc::Channel> channel);

    // Переопределение методов gRPC-сервиса
    grpc::Status RegisterUser(grpc::ServerContext* context,
                                const auth::RegisterUserRequest* request,
                                auth::User* response) override;
    grpc::Status Login(grpc::ServerContext* context,
                       const auth::LoginRequest* request,
                       auth::LoginResponse* response) override;
    grpc::Status UpdateProfile(grpc::ServerContext* context,
                               const auth::UpdateProfileRequest* request,
                               auth::User* response) override;
    grpc::Status GetProfile(grpc::ServerContext* context,
                            const auth::GetProfileRequest* request,
                            auth::User* response) override;
private:
    std::unique_ptr<auth::AuthService::Stub> stub_;
};

} // namespace gateway

#endif // AUTH_SERVICE_PROXY_IMPL_H
