cmake_minimum_required(VERSION 3.10)
project(statservice)

set(CMAKE_CXX_STANDARD 17)

find_package(Protobuf REQUIRED)
find_package(Threads REQUIRED)
find_package(absl REQUIRED)
find_package(gRPC CONFIG REQUIRED)

include_directories(/usr/include/librdkafka)
link_directories(/usr/lib/x86_64-linux-gnu)

set(CMAKE_LIBRARY_PATH /usr/lib/x86_64-linux-gnu ${CMAKE_LIBRARY_PATH})

set(GENERATED_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../proto/generated")
include_directories(${GENERATED_DIR})
include_directories(${Protobuf_INCLUDE_DIRS})

set(SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/StatServiceProxyImpl.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/KafkaConsumer.cpp
    ${GENERATED_DIR}/stat.pb.cc
    ${GENERATED_DIR}/stat.grpc.pb.cc
)

add_executable(statservice ${SOURCES})

target_link_libraries(statservice
    gRPC::grpc++
    grpc           
    gpr              
    protobuf::libprotobuf
    Threads::Threads
    absl::synchronization
    rdkafka
    rdkafka++
)
