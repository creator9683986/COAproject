cmake_minimum_required(VERSION 3.10)
project(gateway_tests)

set(CMAKE_CXX_STANDARD 17)

find_package(gRPC REQUIRED)
find_package(Protobuf REQUIRED)
find_package(GTest REQUIRED)

include_directories(
    ${CMAKE_SOURCE_DIR}/../src
    ${GENERATED_DIR}
    /usr/include/librdkafka
)
link_directories(/usr/lib/x86_64-linux-gnu)
set(CMAKE_LIBRARY_PATH /usr/lib/x86_64-linux-gnu ${CMAKE_LIBRARY_PATH})

include_directories(${CMAKE_SOURCE_DIR}/../proto/generated)

set(GENERATED_DIR ${CMAKE_SOURCE_DIR}/../proto/generated)

set(TEST_SOURCES
    gatewaytest.cpp
    KafkaConsumer.cpp
    ${CMAKE_SOURCE_DIR}/src/AuthServiceProxyImpl.cpp
    ${CMAKE_SOURCE_DIR}/src/PromoServiceProxyImpl.cpp
    ${CMAKE_SOURCE_DIR}/src/KafkaProducer.cpp
    ${GENERATED_DIR}/auth.pb.cc
    ${GENERATED_DIR}/auth.grpc.pb.cc
    ${GENERATED_DIR}/promo.pb.cc
    ${GENERATED_DIR}/promo.grpc.pb.cc
)

add_executable(gatewaytest ${TEST_SOURCES})
target_link_libraries(gatewaytest
    gRPC::grpc++
    protobuf::libprotobuf
    GTest::GTest
    GTest::Main
    Threads::Threads
    rdkafka
    rdkafka++ 
)
