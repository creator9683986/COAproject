cmake_minimum_required(VERSION 3.10)
project(gateway_tests)

set(CMAKE_CXX_STANDARD 17)

find_package(gRPC REQUIRED)
find_package(Protobuf REQUIRED)
find_package(GTest REQUIRED)

# Добавляем include-директорию с заголовками, находящимися в корневом каталоге проекта
include_directories(${CMAKE_SOURCE_DIR}/../proto/generated)

# Указываем путь к сгенерированным исходным файлам
set(GENERATED_DIR ${CMAKE_SOURCE_DIR}/../proto/generated)

set(TEST_SOURCES
    gatewaytest.cpp
    ${GENERATED_DIR}/auth.pb.cc
    ${GENERATED_DIR}/auth.grpc.pb.cc
)

add_executable(gatewaytest ${TEST_SOURCES})
target_link_libraries(gatewaytest
    gRPC::grpc++
    protobuf::libprotobuf
    GTest::GTest
    GTest::Main
    Threads::Threads
)
