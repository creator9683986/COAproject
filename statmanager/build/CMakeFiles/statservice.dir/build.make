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
CMAKE_SOURCE_DIR = /home/timsus/projects/COAproject/statmanager

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/timsus/projects/COAproject/statmanager/build

# Include any dependencies generated for this target.
include CMakeFiles/statservice.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/statservice.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/statservice.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/statservice.dir/flags.make

CMakeFiles/statservice.dir/src/main.cpp.o: CMakeFiles/statservice.dir/flags.make
CMakeFiles/statservice.dir/src/main.cpp.o: /home/timsus/projects/COAproject/statmanager/src/main.cpp
CMakeFiles/statservice.dir/src/main.cpp.o: CMakeFiles/statservice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/statmanager/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/statservice.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/statservice.dir/src/main.cpp.o -MF CMakeFiles/statservice.dir/src/main.cpp.o.d -o CMakeFiles/statservice.dir/src/main.cpp.o -c /home/timsus/projects/COAproject/statmanager/src/main.cpp

CMakeFiles/statservice.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/statservice.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/statmanager/src/main.cpp > CMakeFiles/statservice.dir/src/main.cpp.i

CMakeFiles/statservice.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/statservice.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/statmanager/src/main.cpp -o CMakeFiles/statservice.dir/src/main.cpp.s

CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.o: CMakeFiles/statservice.dir/flags.make
CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.o: /home/timsus/projects/COAproject/statmanager/src/StatServiceProxyImpl.cpp
CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.o: CMakeFiles/statservice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/statmanager/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.o -MF CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.o.d -o CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.o -c /home/timsus/projects/COAproject/statmanager/src/StatServiceProxyImpl.cpp

CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/statmanager/src/StatServiceProxyImpl.cpp > CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.i

CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/statmanager/src/StatServiceProxyImpl.cpp -o CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.s

CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.o: CMakeFiles/statservice.dir/flags.make
CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.o: /home/timsus/projects/COAproject/statmanager/src/KafkaConsumer.cpp
CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.o: CMakeFiles/statservice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/statmanager/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.o -MF CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.o.d -o CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.o -c /home/timsus/projects/COAproject/statmanager/src/KafkaConsumer.cpp

CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/statmanager/src/KafkaConsumer.cpp > CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.i

CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/statmanager/src/KafkaConsumer.cpp -o CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.s

CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.o: CMakeFiles/statservice.dir/flags.make
CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.o: /home/timsus/projects/COAproject/proto/generated/stat.pb.cc
CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.o: CMakeFiles/statservice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/statmanager/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.o -MF CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.o.d -o CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.o -c /home/timsus/projects/COAproject/proto/generated/stat.pb.cc

CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/proto/generated/stat.pb.cc > CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.i

CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/proto/generated/stat.pb.cc -o CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.s

CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.o: CMakeFiles/statservice.dir/flags.make
CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.o: /home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc
CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.o: CMakeFiles/statservice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/statmanager/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.o -MF CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.o.d -o CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.o -c /home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc

CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc > CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.i

CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc -o CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.s

# Object files for target statservice
statservice_OBJECTS = \
"CMakeFiles/statservice.dir/src/main.cpp.o" \
"CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.o" \
"CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.o" \
"CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.o" \
"CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.o"

# External object files for target statservice
statservice_EXTERNAL_OBJECTS =

statservice: CMakeFiles/statservice.dir/src/main.cpp.o
statservice: CMakeFiles/statservice.dir/src/StatServiceProxyImpl.cpp.o
statservice: CMakeFiles/statservice.dir/src/KafkaConsumer.cpp.o
statservice: CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.pb.cc.o
statservice: CMakeFiles/statservice.dir/home/timsus/projects/COAproject/proto/generated/stat.grpc.pb.cc.o
statservice: CMakeFiles/statservice.dir/build.make
statservice: /usr/lib/x86_64-linux-gnu/libgrpc++.so.1.51.1
statservice: /usr/local/lib/libprotobuf.so
statservice: /usr/local/lib/libabsl_synchronization.a
statservice: /usr/lib/x86_64-linux-gnu/libgrpc.so.29.0.0
statservice: /usr/lib/x86_64-linux-gnu/libz.so
statservice: /usr/lib/x86_64-linux-gnu/libcares.so.2.12.0
statservice: /usr/lib/x86_64-linux-gnu/libaddress_sorting.so.29.0.0
statservice: /usr/lib/x86_64-linux-gnu/libupb.so.29.0.0
statservice: /usr/local/lib/libabsl_raw_hash_set.a
statservice: /usr/local/lib/libabsl_hashtablez_sampler.a
statservice: /usr/local/lib/libabsl_hash.a
statservice: /usr/local/lib/libabsl_city.a
statservice: /usr/local/lib/libabsl_low_level_hash.a
statservice: /usr/local/lib/libabsl_statusor.a
statservice: /usr/lib/x86_64-linux-gnu/libgpr.so.29.0.0
statservice: /usr/local/lib/libabsl_status.a
statservice: /usr/local/lib/libabsl_leak_check.a
statservice: /usr/local/lib/libabsl_strerror.a
statservice: /usr/local/lib/libabsl_random_distributions.a
statservice: /usr/local/lib/libabsl_random_seed_sequences.a
statservice: /usr/local/lib/libabsl_random_internal_entropy_pool.a
statservice: /usr/local/lib/libabsl_random_internal_randen.a
statservice: /usr/local/lib/libabsl_random_internal_randen_hwaes.a
statservice: /usr/local/lib/libabsl_random_internal_randen_hwaes_impl.a
statservice: /usr/local/lib/libabsl_random_internal_randen_slow.a
statservice: /usr/local/lib/libabsl_random_internal_platform.a
statservice: /usr/local/lib/libabsl_random_internal_seed_material.a
statservice: /usr/local/lib/libabsl_random_seed_gen_exception.a
statservice: /usr/local/lib/libabsl_cord.a
statservice: /usr/local/lib/libabsl_cordz_info.a
statservice: /usr/local/lib/libabsl_cord_internal.a
statservice: /usr/local/lib/libabsl_cordz_functions.a
statservice: /usr/local/lib/libabsl_exponential_biased.a
statservice: /usr/local/lib/libabsl_cordz_handle.a
statservice: /usr/local/lib/libabsl_synchronization.a
statservice: /usr/local/lib/libabsl_graphcycles_internal.a
statservice: /usr/local/lib/libabsl_kernel_timeout_internal.a
statservice: /usr/local/lib/libabsl_stacktrace.a
statservice: /usr/local/lib/libabsl_symbolize.a
statservice: /usr/local/lib/libabsl_malloc_internal.a
statservice: /usr/local/lib/libabsl_debugging_internal.a
statservice: /usr/local/lib/libabsl_demangle_internal.a
statservice: /usr/local/lib/libabsl_demangle_rust.a
statservice: /usr/local/lib/libabsl_decode_rust_punycode.a
statservice: /usr/local/lib/libabsl_utf8_for_code_point.a
statservice: /usr/local/lib/libabsl_tracing_internal.a
statservice: /usr/local/lib/libabsl_time.a
statservice: /usr/local/lib/libabsl_civil_time.a
statservice: /usr/local/lib/libabsl_time_zone.a
statservice: /usr/local/lib/libabsl_crc_cord_state.a
statservice: /usr/local/lib/libabsl_crc32c.a
statservice: /usr/local/lib/libabsl_str_format_internal.a
statservice: /usr/local/lib/libabsl_strings.a
statservice: /usr/local/lib/libabsl_strings_internal.a
statservice: /usr/local/lib/libabsl_string_view.a
statservice: /usr/local/lib/libabsl_int128.a
statservice: /usr/local/lib/libabsl_throw_delegate.a
statservice: /usr/local/lib/libabsl_crc_internal.a
statservice: /usr/local/lib/libabsl_crc_cpu_detect.a
statservice: /usr/local/lib/libabsl_base.a
statservice: /usr/local/lib/libabsl_raw_logging_internal.a
statservice: /usr/local/lib/libabsl_log_severity.a
statservice: /usr/local/lib/libabsl_spinlock_wait.a
statservice: /usr/lib/x86_64-linux-gnu/libssl.so
statservice: /usr/lib/x86_64-linux-gnu/libcrypto.so
statservice: CMakeFiles/statservice.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/timsus/projects/COAproject/statmanager/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable statservice"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/statservice.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/statservice.dir/build: statservice
.PHONY : CMakeFiles/statservice.dir/build

CMakeFiles/statservice.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/statservice.dir/cmake_clean.cmake
.PHONY : CMakeFiles/statservice.dir/clean

CMakeFiles/statservice.dir/depend:
	cd /home/timsus/projects/COAproject/statmanager/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/timsus/projects/COAproject/statmanager /home/timsus/projects/COAproject/statmanager /home/timsus/projects/COAproject/statmanager/build /home/timsus/projects/COAproject/statmanager/build /home/timsus/projects/COAproject/statmanager/build/CMakeFiles/statservice.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/statservice.dir/depend

