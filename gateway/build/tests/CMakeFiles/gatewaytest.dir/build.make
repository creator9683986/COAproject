# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/timsus/projects/COAproject/gateway

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/timsus/projects/COAproject/gateway/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/gatewaytest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/gatewaytest.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/gatewaytest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/gatewaytest.dir/flags.make

tests/CMakeFiles/gatewaytest.dir/hw6.cpp.o: tests/CMakeFiles/gatewaytest.dir/flags.make
tests/CMakeFiles/gatewaytest.dir/hw6.cpp.o: /home/timsus/projects/COAproject/gateway/tests/hw6.cpp
tests/CMakeFiles/gatewaytest.dir/hw6.cpp.o: tests/CMakeFiles/gatewaytest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/gateway/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/gatewaytest.dir/hw6.cpp.o"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/gatewaytest.dir/hw6.cpp.o -MF CMakeFiles/gatewaytest.dir/hw6.cpp.o.d -o CMakeFiles/gatewaytest.dir/hw6.cpp.o -c /home/timsus/projects/COAproject/gateway/tests/hw6.cpp

tests/CMakeFiles/gatewaytest.dir/hw6.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gatewaytest.dir/hw6.cpp.i"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/gateway/tests/hw6.cpp > CMakeFiles/gatewaytest.dir/hw6.cpp.i

tests/CMakeFiles/gatewaytest.dir/hw6.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gatewaytest.dir/hw6.cpp.s"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/gateway/tests/hw6.cpp -o CMakeFiles/gatewaytest.dir/hw6.cpp.s

tests/CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.o: tests/CMakeFiles/gatewaytest.dir/flags.make
tests/CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.o: /home/timsus/projects/COAproject/gateway/tests/KafkaConsumer.cpp
tests/CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.o: tests/CMakeFiles/gatewaytest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/gateway/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.o"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.o -MF CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.o.d -o CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.o -c /home/timsus/projects/COAproject/gateway/tests/KafkaConsumer.cpp

tests/CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.i"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/gateway/tests/KafkaConsumer.cpp > CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.i

tests/CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.s"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/gateway/tests/KafkaConsumer.cpp -o CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.s

tests/CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.o: tests/CMakeFiles/gatewaytest.dir/flags.make
tests/CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.o: /home/timsus/projects/COAproject/gateway/src/AuthServiceProxyImpl.cpp
tests/CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.o: tests/CMakeFiles/gatewaytest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/gateway/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tests/CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.o"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.o -MF CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.o.d -o CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.o -c /home/timsus/projects/COAproject/gateway/src/AuthServiceProxyImpl.cpp

tests/CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.i"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/gateway/src/AuthServiceProxyImpl.cpp > CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.i

tests/CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.s"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/gateway/src/AuthServiceProxyImpl.cpp -o CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.s

tests/CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.o: tests/CMakeFiles/gatewaytest.dir/flags.make
tests/CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.o: /home/timsus/projects/COAproject/gateway/src/PromoServiceProxyImpl.cpp
tests/CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.o: tests/CMakeFiles/gatewaytest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/gateway/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tests/CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.o"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.o -MF CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.o.d -o CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.o -c /home/timsus/projects/COAproject/gateway/src/PromoServiceProxyImpl.cpp

tests/CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.i"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/gateway/src/PromoServiceProxyImpl.cpp > CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.i

tests/CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.s"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/gateway/src/PromoServiceProxyImpl.cpp -o CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.s

tests/CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.o: tests/CMakeFiles/gatewaytest.dir/flags.make
tests/CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.o: /home/timsus/projects/COAproject/gateway/src/KafkaProducer.cpp
tests/CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.o: tests/CMakeFiles/gatewaytest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/gateway/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object tests/CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.o"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.o -MF CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.o.d -o CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.o -c /home/timsus/projects/COAproject/gateway/src/KafkaProducer.cpp

tests/CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.i"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/gateway/src/KafkaProducer.cpp > CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.i

tests/CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.s"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/gateway/src/KafkaProducer.cpp -o CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.s

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.o: tests/CMakeFiles/gatewaytest.dir/flags.make
tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.o: /home/timsus/projects/COAproject/proto/generated/auth.pb.cc
tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.o: tests/CMakeFiles/gatewaytest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/gateway/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.o"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.o -MF CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.o.d -o CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.o -c /home/timsus/projects/COAproject/proto/generated/auth.pb.cc

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.i"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/proto/generated/auth.pb.cc > CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.i

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.s"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/proto/generated/auth.pb.cc -o CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.s

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.o: tests/CMakeFiles/gatewaytest.dir/flags.make
tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.o: /home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc
tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.o: tests/CMakeFiles/gatewaytest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/gateway/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.o"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.o -MF CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.o.d -o CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.o -c /home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.i"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc > CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.i

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.s"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc -o CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.s

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o: tests/CMakeFiles/gatewaytest.dir/flags.make
tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o: /home/timsus/projects/COAproject/proto/generated/promo.pb.cc
tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o: tests/CMakeFiles/gatewaytest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/gateway/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o -MF CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o.d -o CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o -c /home/timsus/projects/COAproject/proto/generated/promo.pb.cc

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.i"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/proto/generated/promo.pb.cc > CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.i

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.s"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/proto/generated/promo.pb.cc -o CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.s

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o: tests/CMakeFiles/gatewaytest.dir/flags.make
tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o: /home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc
tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o: tests/CMakeFiles/gatewaytest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/gateway/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o -MF CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o.d -o CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o -c /home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.i"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc > CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.i

tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.s"
	cd /home/timsus/projects/COAproject/gateway/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc -o CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.s

# Object files for target gatewaytest
gatewaytest_OBJECTS = \
"CMakeFiles/gatewaytest.dir/hw6.cpp.o" \
"CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.o" \
"CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.o" \
"CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.o" \
"CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.o" \
"CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.o" \
"CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.o" \
"CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o" \
"CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o"

# External object files for target gatewaytest
gatewaytest_EXTERNAL_OBJECTS =

tests/gatewaytest: tests/CMakeFiles/gatewaytest.dir/hw6.cpp.o
tests/gatewaytest: tests/CMakeFiles/gatewaytest.dir/KafkaConsumer.cpp.o
tests/gatewaytest: tests/CMakeFiles/gatewaytest.dir/__/src/AuthServiceProxyImpl.cpp.o
tests/gatewaytest: tests/CMakeFiles/gatewaytest.dir/__/src/PromoServiceProxyImpl.cpp.o
tests/gatewaytest: tests/CMakeFiles/gatewaytest.dir/__/src/KafkaProducer.cpp.o
tests/gatewaytest: tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.pb.cc.o
tests/gatewaytest: tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/auth.grpc.pb.cc.o
tests/gatewaytest: tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o
tests/gatewaytest: tests/CMakeFiles/gatewaytest.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o
tests/gatewaytest: tests/CMakeFiles/gatewaytest.dir/build.make
tests/gatewaytest: /usr/lib/x86_64-linux-gnu/libgrpc++.so.1.51.1
tests/gatewaytest: /usr/local/lib/libprotobuf.so
tests/gatewaytest: /usr/lib/x86_64-linux-gnu/libgrpc.so.29.0.0
tests/gatewaytest: /usr/lib/x86_64-linux-gnu/libz.so
tests/gatewaytest: /usr/lib/x86_64-linux-gnu/libcares.so.2.12.0
tests/gatewaytest: /usr/lib/x86_64-linux-gnu/libaddress_sorting.so.29.0.0
tests/gatewaytest: /usr/lib/x86_64-linux-gnu/libupb.so.29.0.0
tests/gatewaytest: /usr/local/lib/libabsl_raw_hash_set.a
tests/gatewaytest: /usr/local/lib/libabsl_hashtablez_sampler.a
tests/gatewaytest: /usr/local/lib/libabsl_hash.a
tests/gatewaytest: /usr/local/lib/libabsl_city.a
tests/gatewaytest: /usr/local/lib/libabsl_low_level_hash.a
tests/gatewaytest: /usr/local/lib/libabsl_statusor.a
tests/gatewaytest: /usr/lib/x86_64-linux-gnu/libgpr.so.29.0.0
tests/gatewaytest: /usr/local/lib/libabsl_status.a
tests/gatewaytest: /usr/local/lib/libabsl_leak_check.a
tests/gatewaytest: /usr/local/lib/libabsl_strerror.a
tests/gatewaytest: /usr/local/lib/libabsl_random_distributions.a
tests/gatewaytest: /usr/local/lib/libabsl_random_seed_sequences.a
tests/gatewaytest: /usr/local/lib/libabsl_random_internal_entropy_pool.a
tests/gatewaytest: /usr/local/lib/libabsl_random_internal_randen.a
tests/gatewaytest: /usr/local/lib/libabsl_random_internal_randen_hwaes.a
tests/gatewaytest: /usr/local/lib/libabsl_random_internal_randen_hwaes_impl.a
tests/gatewaytest: /usr/local/lib/libabsl_random_internal_randen_slow.a
tests/gatewaytest: /usr/local/lib/libabsl_random_internal_platform.a
tests/gatewaytest: /usr/local/lib/libabsl_random_internal_seed_material.a
tests/gatewaytest: /usr/local/lib/libabsl_random_seed_gen_exception.a
tests/gatewaytest: /usr/local/lib/libabsl_cord.a
tests/gatewaytest: /usr/local/lib/libabsl_cordz_info.a
tests/gatewaytest: /usr/local/lib/libabsl_cord_internal.a
tests/gatewaytest: /usr/local/lib/libabsl_cordz_functions.a
tests/gatewaytest: /usr/local/lib/libabsl_exponential_biased.a
tests/gatewaytest: /usr/local/lib/libabsl_cordz_handle.a
tests/gatewaytest: /usr/local/lib/libabsl_crc_cord_state.a
tests/gatewaytest: /usr/local/lib/libabsl_crc32c.a
tests/gatewaytest: /usr/local/lib/libabsl_str_format_internal.a
tests/gatewaytest: /usr/local/lib/libabsl_crc_internal.a
tests/gatewaytest: /usr/local/lib/libabsl_crc_cpu_detect.a
tests/gatewaytest: /usr/local/lib/libabsl_synchronization.a
tests/gatewaytest: /usr/local/lib/libabsl_stacktrace.a
tests/gatewaytest: /usr/local/lib/libabsl_symbolize.a
tests/gatewaytest: /usr/local/lib/libabsl_debugging_internal.a
tests/gatewaytest: /usr/local/lib/libabsl_demangle_internal.a
tests/gatewaytest: /usr/local/lib/libabsl_demangle_rust.a
tests/gatewaytest: /usr/local/lib/libabsl_decode_rust_punycode.a
tests/gatewaytest: /usr/local/lib/libabsl_utf8_for_code_point.a
tests/gatewaytest: /usr/local/lib/libabsl_graphcycles_internal.a
tests/gatewaytest: /usr/local/lib/libabsl_kernel_timeout_internal.a
tests/gatewaytest: /usr/local/lib/libabsl_malloc_internal.a
tests/gatewaytest: /usr/local/lib/libabsl_tracing_internal.a
tests/gatewaytest: /usr/local/lib/libabsl_time.a
tests/gatewaytest: /usr/local/lib/libabsl_strings.a
tests/gatewaytest: /usr/local/lib/libabsl_int128.a
tests/gatewaytest: /usr/local/lib/libabsl_strings_internal.a
tests/gatewaytest: /usr/local/lib/libabsl_string_view.a
tests/gatewaytest: /usr/local/lib/libabsl_throw_delegate.a
tests/gatewaytest: /usr/local/lib/libabsl_base.a
tests/gatewaytest: /usr/local/lib/libabsl_spinlock_wait.a
tests/gatewaytest: /usr/local/lib/libabsl_raw_logging_internal.a
tests/gatewaytest: /usr/local/lib/libabsl_log_severity.a
tests/gatewaytest: /usr/local/lib/libabsl_civil_time.a
tests/gatewaytest: /usr/local/lib/libabsl_time_zone.a
tests/gatewaytest: /usr/lib/x86_64-linux-gnu/libssl.so
tests/gatewaytest: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/gatewaytest: /usr/lib/x86_64-linux-gnu/libgtest_main.a
tests/gatewaytest: /usr/lib/x86_64-linux-gnu/libgtest.a
tests/gatewaytest: tests/CMakeFiles/gatewaytest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/timsus/projects/COAproject/gateway/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable gatewaytest"
	cd /home/timsus/projects/COAproject/gateway/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gatewaytest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/gatewaytest.dir/build: tests/gatewaytest
.PHONY : tests/CMakeFiles/gatewaytest.dir/build

tests/CMakeFiles/gatewaytest.dir/clean:
	cd /home/timsus/projects/COAproject/gateway/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/gatewaytest.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/gatewaytest.dir/clean

tests/CMakeFiles/gatewaytest.dir/depend:
	cd /home/timsus/projects/COAproject/gateway/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/timsus/projects/COAproject/gateway /home/timsus/projects/COAproject/gateway/tests /home/timsus/projects/COAproject/gateway/build /home/timsus/projects/COAproject/gateway/build/tests /home/timsus/projects/COAproject/gateway/build/tests/CMakeFiles/gatewaytest.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/gatewaytest.dir/depend

