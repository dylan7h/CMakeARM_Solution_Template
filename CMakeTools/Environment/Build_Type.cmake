# Release Mode Build Options
set(CMAKE_C_FLAGS_RELEASE_INIT      "-O2")

# Debug Mode Build Options
set(CMAKE_C_FLAGS_DEBUG_INIT        "-g -DDEBUG -D_DEBUG")

# Set Executable Suffix
set(CMAKE_EXECUTABLE_SUFFIX         ".axf")

set(CMAKE_${lang}_COMPILER_TARGET   ${COMPILER_TARGET})
