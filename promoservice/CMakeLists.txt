cmake_minimum_required(VERSION 3.10)
project(promoservice)

set(CMAKE_CXX_STANDARD 17)

find_package(Protobuf REQUIRED)
find_package(gRPC CONFIG REQUIRED)
find_package(Threads REQUIRED)

set(GENERATED_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../proto/generated")


include_directories(${GENERATED_DIR})
include_directories(${Protobuf_INCLUDE_DIRS})

set(SOURCES
    main.cpp
    PromoServiceImpl.cpp
    db_helper.cpp
    ${GENERATED_DIR}/promo.pb.cc
    ${GENERATED_DIR}/promo.grpc.pb.cc
)

add_executable(promoservice ${SOURCES})
add_subdirectory(tests)

target_link_libraries(promoservice
    gRPC::grpc++
    protobuf::libprotobuf
    Threads::Threads
    pq
    pqxx
)
