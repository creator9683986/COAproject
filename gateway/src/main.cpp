#include <iostream>
#include <memory>
#include <string>
#include <grpcpp/grpcpp.h>
#include "AuthServiceProxyImpl.h"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::InsecureServerCredentials;

namespace gateway {

// Функция для запуска сервера API Gateway.
// Можно расширить получение параметров (например, через аргументы командной строки или переменные окружения)
void RunServer(const std::string& server_address, const std::string& authmanager_address) {
    // Создаем канал для подключения к настоящему Auth Service.
    AuthServiceProxyImpl service(
        grpc::CreateChannel(authmanager_address, grpc::InsecureChannelCredentials())
    );

    grpc::ServerBuilder builder;
    builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
    builder.RegisterService(&service);

    std::unique_ptr<grpc::Server> server(builder.BuildAndStart());
    std::cout << "API Gateway listening on " << server_address << std::endl;
    server->Wait();
}


} // namespace gateway

int main(int argc, char** argv) {
    // Можно сделать парсинг аргументов для гибкой конфигурации.
    std::string server_address("0.0.0.0:50052");
    std::string authmanager_address("localhost:50051");

    gateway::RunServer(server_address, authmanager_address);
    return 0;
}
