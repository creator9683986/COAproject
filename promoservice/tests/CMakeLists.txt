cmake_minimum_required(VERSION 3.10)
project(promoservice_tests)

set(CMAKE_CXX_STANDARD 17)

find_package(GTest REQUIRED)
find_package(Threads REQUIRED)

set(TEST_SOURCES
    test_promoservice.cpp
    ../PromoServiceImpl.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/../../proto/generated/promo.pb.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/../../proto/generated/promo.grpc.pb.cc
)

add_executable(promoservice_tests ${TEST_SOURCES})

target_include_directories(promoservice_tests PRIVATE 
    ${CMAKE_CURRENT_SOURCE_DIR}/../../proto/generated
    ${CMAKE_CURRENT_SOURCE_DIR}/..
)

target_link_libraries(promoservice_tests
    GTest::GTest
    GTest::Main
    pthread
    gRPC::grpc++
    protobuf::libprotobuf
    Threads::Threads
    pq
    pqxx
)

include(GoogleTest)
gtest_discover_tests(promoservice_tests)
