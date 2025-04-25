#include "PromoServiceProxyImpl.h"

namespace statservice {

    StatServiceProxyImpl::StatServiceProxyImpl(std::shared_ptr<grpc::Channel> promoChannel,
                                             std::shared_ptr<grpc::Channel> authChannel)
    : promo_stub_(promo::PromoService::NewStub(promoChannel)),
      auth_stub_(auth::AuthService::NewStub(authChannel))
{}

grpc::Status StatServiceProxyImpl::ValidateToken(const std::string& token) {
    auth::GetProfileRequest authReq;
    authReq.set_token(token);
    auth::User dummyUser;
    grpc::ClientContext authContext;
    grpc::Status authStatus = auth_stub_->GetProfile(&authContext, authReq, &dummyUser);
    if (!authStatus.ok()) {
        return grpc::Status(grpc::StatusCode::UNAUTHENTICATED, "Недействительный токен");
    }
    return grpc::Status::OK;
}


} // namespace statservice
