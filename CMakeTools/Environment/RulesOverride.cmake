#################################################################
############# [ CMAKE_USER_MAKE_RULES_OVERRIDE ] ################
#################################################################

# Release Mode Build Options
set(CMAKE_C_FLAGS_RELEASE_INIT      "-O2")

# Min Size Mode with min debug info 
set(CMAKE_C_FLAGS_MINSIZEREL_INIT   "-O2 -DDEBUG -D_DEBUG")

# Debug Mode Build Options
set(CMAKE_C_FLAGS_DEBUG_INIT        "-g -DDEBUG -D_DEBUG")

# ArmCompiler4/6 Option
if(${CMAKE_C_COMPILER_ID} MATCHES "ARMClang" OR ${CMAKE_C_COMPILER_ID} MATCHES "ARMCC")
    # Set Executable Suffix
    set(CMAKE_EXECUTABLE_SUFFIX     ".axf")

    # Compile Target ABI (32bit - arm-arm-none-eabi | 64bit - aarch64-arm-none-eabi)
    if(${TARGET_ABI} MATCHES arm)
        set(CMAKE_C_COMPILER_TARGET     arm-arm-none-eabi)
        set(CMAKE_CXX_COMPILER_TARGET   arm-arm-none-eabi)
    elseif(${TARGET_ABI} MATCHES aarch64)
        set(CMAKE_C_COMPILER_TARGET     aarch64-arm-none-eabi)
        set(CMAKE_CXX_COMPILER_TARGET   aarch64-arm-none-eabi)
    endif()

endif()
