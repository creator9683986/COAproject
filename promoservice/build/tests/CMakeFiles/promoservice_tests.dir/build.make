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
CMAKE_SOURCE_DIR = /home/timsus/projects/COAproject/promoservice

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/timsus/projects/COAproject/promoservice/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/promoservice_tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/promoservice_tests.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/promoservice_tests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/promoservice_tests.dir/flags.make

tests/CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.o: tests/CMakeFiles/promoservice_tests.dir/flags.make
tests/CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.o: /home/timsus/projects/COAproject/promoservice/tests/test_promoservice.cpp
tests/CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.o: tests/CMakeFiles/promoservice_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/promoservice/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.o"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.o -MF CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.o.d -o CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.o -c /home/timsus/projects/COAproject/promoservice/tests/test_promoservice.cpp

tests/CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.i"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/promoservice/tests/test_promoservice.cpp > CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.i

tests/CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.s"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/promoservice/tests/test_promoservice.cpp -o CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.s

tests/CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.o: tests/CMakeFiles/promoservice_tests.dir/flags.make
tests/CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.o: /home/timsus/projects/COAproject/promoservice/PromoServiceImpl.cpp
tests/CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.o: tests/CMakeFiles/promoservice_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/promoservice/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.o"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.o -MF CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.o.d -o CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.o -c /home/timsus/projects/COAproject/promoservice/PromoServiceImpl.cpp

tests/CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.i"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/promoservice/PromoServiceImpl.cpp > CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.i

tests/CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.s"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/promoservice/PromoServiceImpl.cpp -o CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.s

tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o: tests/CMakeFiles/promoservice_tests.dir/flags.make
tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o: /home/timsus/projects/COAproject/proto/generated/promo.pb.cc
tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o: tests/CMakeFiles/promoservice_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/promoservice/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o -MF CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o.d -o CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o -c /home/timsus/projects/COAproject/proto/generated/promo.pb.cc

tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.i"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/proto/generated/promo.pb.cc > CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.i

tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.s"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/proto/generated/promo.pb.cc -o CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.s

tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o: tests/CMakeFiles/promoservice_tests.dir/flags.make
tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o: /home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc
tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o: tests/CMakeFiles/promoservice_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timsus/projects/COAproject/promoservice/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o -MF CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o.d -o CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o -c /home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc

tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.i"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc > CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.i

tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.s"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc -o CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.s

# Object files for target promoservice_tests
promoservice_tests_OBJECTS = \
"CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.o" \
"CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.o" \
"CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o" \
"CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o"

# External object files for target promoservice_tests
promoservice_tests_EXTERNAL_OBJECTS =

tests/promoservice_tests: tests/CMakeFiles/promoservice_tests.dir/test_promoservice.cpp.o
tests/promoservice_tests: tests/CMakeFiles/promoservice_tests.dir/__/PromoServiceImpl.cpp.o
tests/promoservice_tests: tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.pb.cc.o
tests/promoservice_tests: tests/CMakeFiles/promoservice_tests.dir/home/timsus/projects/COAproject/proto/generated/promo.grpc.pb.cc.o
tests/promoservice_tests: tests/CMakeFiles/promoservice_tests.dir/build.make
tests/promoservice_tests: /usr/lib/x86_64-linux-gnu/libgrpc++.so.1.51.1
tests/promoservice_tests: /usr/local/lib/libprotobuf.so
tests/promoservice_tests: /usr/lib/x86_64-linux-gnu/libgtest_main.a
tests/promoservice_tests: /usr/lib/x86_64-linux-gnu/libgtest.a
tests/promoservice_tests: /usr/lib/x86_64-linux-gnu/libgrpc.so.29.0.0
tests/promoservice_tests: /usr/lib/x86_64-linux-gnu/libz.so
tests/promoservice_tests: /usr/lib/x86_64-linux-gnu/libcares.so.2.12.0
tests/promoservice_tests: /usr/lib/x86_64-linux-gnu/libaddress_sorting.so.29.0.0
tests/promoservice_tests: /usr/lib/x86_64-linux-gnu/libupb.so.29.0.0
tests/promoservice_tests: /usr/local/lib/libabsl_raw_hash_set.a
tests/promoservice_tests: /usr/local/lib/libabsl_hashtablez_sampler.a
tests/promoservice_tests: /usr/local/lib/libabsl_hash.a
tests/promoservice_tests: /usr/local/lib/libabsl_city.a
tests/promoservice_tests: /usr/local/lib/libabsl_low_level_hash.a
tests/promoservice_tests: /usr/local/lib/libabsl_statusor.a
tests/promoservice_tests: /usr/lib/x86_64-linux-gnu/libgpr.so.29.0.0
tests/promoservice_tests: /usr/local/lib/libabsl_status.a
tests/promoservice_tests: /usr/local/lib/libabsl_leak_check.a
tests/promoservice_tests: /usr/local/lib/libabsl_strerror.a
tests/promoservice_tests: /usr/local/lib/libabsl_random_distributions.a
tests/promoservice_tests: /usr/local/lib/libabsl_random_seed_sequences.a
tests/promoservice_tests: /usr/local/lib/libabsl_random_internal_entropy_pool.a
tests/promoservice_tests: /usr/local/lib/libabsl_random_internal_randen.a
tests/promoservice_tests: /usr/local/lib/libabsl_random_internal_randen_hwaes.a
tests/promoservice_tests: /usr/local/lib/libabsl_random_internal_randen_hwaes_impl.a
tests/promoservice_tests: /usr/local/lib/libabsl_random_internal_randen_slow.a
tests/promoservice_tests: /usr/local/lib/libabsl_random_internal_platform.a
tests/promoservice_tests: /usr/local/lib/libabsl_random_internal_seed_material.a
tests/promoservice_tests: /usr/local/lib/libabsl_random_seed_gen_exception.a
tests/promoservice_tests: /usr/local/lib/libabsl_cord.a
tests/promoservice_tests: /usr/local/lib/libabsl_cordz_info.a
tests/promoservice_tests: /usr/local/lib/libabsl_cord_internal.a
tests/promoservice_tests: /usr/local/lib/libabsl_cordz_functions.a
tests/promoservice_tests: /usr/local/lib/libabsl_exponential_biased.a
tests/promoservice_tests: /usr/local/lib/libabsl_cordz_handle.a
tests/promoservice_tests: /usr/local/lib/libabsl_crc_cord_state.a
tests/promoservice_tests: /usr/local/lib/libabsl_crc32c.a
tests/promoservice_tests: /usr/local/lib/libabsl_str_format_internal.a
tests/promoservice_tests: /usr/local/lib/libabsl_crc_internal.a
tests/promoservice_tests: /usr/local/lib/libabsl_crc_cpu_detect.a
tests/promoservice_tests: /usr/local/lib/libabsl_synchronization.a
tests/promoservice_tests: /usr/local/lib/libabsl_stacktrace.a
tests/promoservice_tests: /usr/local/lib/libabsl_symbolize.a
tests/promoservice_tests: /usr/local/lib/libabsl_debugging_internal.a
tests/promoservice_tests: /usr/local/lib/libabsl_demangle_internal.a
tests/promoservice_tests: /usr/local/lib/libabsl_demangle_rust.a
tests/promoservice_tests: /usr/local/lib/libabsl_decode_rust_punycode.a
tests/promoservice_tests: /usr/local/lib/libabsl_utf8_for_code_point.a
tests/promoservice_tests: /usr/local/lib/libabsl_graphcycles_internal.a
tests/promoservice_tests: /usr/local/lib/libabsl_kernel_timeout_internal.a
tests/promoservice_tests: /usr/local/lib/libabsl_malloc_internal.a
tests/promoservice_tests: /usr/local/lib/libabsl_tracing_internal.a
tests/promoservice_tests: /usr/local/lib/libabsl_time.a
tests/promoservice_tests: /usr/local/lib/libabsl_strings.a
tests/promoservice_tests: /usr/local/lib/libabsl_int128.a
tests/promoservice_tests: /usr/local/lib/libabsl_strings_internal.a
tests/promoservice_tests: /usr/local/lib/libabsl_string_view.a
tests/promoservice_tests: /usr/local/lib/libabsl_throw_delegate.a
tests/promoservice_tests: /usr/local/lib/libabsl_base.a
tests/promoservice_tests: /usr/local/lib/libabsl_spinlock_wait.a
tests/promoservice_tests: /usr/local/lib/libabsl_raw_logging_internal.a
tests/promoservice_tests: /usr/local/lib/libabsl_log_severity.a
tests/promoservice_tests: /usr/local/lib/libabsl_civil_time.a
tests/promoservice_tests: /usr/local/lib/libabsl_time_zone.a
tests/promoservice_tests: /usr/lib/x86_64-linux-gnu/libssl.so
tests/promoservice_tests: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/promoservice_tests: tests/CMakeFiles/promoservice_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/timsus/projects/COAproject/promoservice/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable promoservice_tests"
	cd /home/timsus/projects/COAproject/promoservice/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/promoservice_tests.dir/link.txt --verbose=$(VERBOSE)
	cd /home/timsus/projects/COAproject/promoservice/build/tests && /usr/bin/cmake -D TEST_TARGET=promoservice_tests -D TEST_EXECUTABLE=/home/timsus/projects/COAproject/promoservice/build/tests/promoservice_tests -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/timsus/projects/COAproject/promoservice/build/tests -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=promoservice_tests_TESTS -D CTEST_FILE=/home/timsus/projects/COAproject/promoservice/build/tests/promoservice_tests[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.28/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
tests/CMakeFiles/promoservice_tests.dir/build: tests/promoservice_tests
.PHONY : tests/CMakeFiles/promoservice_tests.dir/build

tests/CMakeFiles/promoservice_tests.dir/clean:
	cd /home/timsus/projects/COAproject/promoservice/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/promoservice_tests.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/promoservice_tests.dir/clean

tests/CMakeFiles/promoservice_tests.dir/depend:
	cd /home/timsus/projects/COAproject/promoservice/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/timsus/projects/COAproject/promoservice /home/timsus/projects/COAproject/promoservice/tests /home/timsus/projects/COAproject/promoservice/build /home/timsus/projects/COAproject/promoservice/build/tests /home/timsus/projects/COAproject/promoservice/build/tests/CMakeFiles/promoservice_tests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/promoservice_tests.dir/depend

