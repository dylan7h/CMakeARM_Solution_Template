# CMake Minimum Required Version Information
cmake_minimum_required(VERSION 3.15)

project(
    # Project Name
    TestApp-A
    # Version <Major>.<Minor>.<Patch>.<Tweak>
    VERSION         0.0.0.1
    # Project Description
    DESCRIPTION     "Test Application A"
    # Project Language
    LANGUAGES       C ASM
)

#  Assembler Compile Definitions
set(ADEFINES ${ADEFINES}
     
)

# C Compile Definitions
set(CDEFINES ${CDEFINES}

)

# Assembler Compile Options
set(AFLAGS ${AFLAGS}

)

# C Compiler Options
set(CFLAGS ${CFLAGS}

)

# Linker Options
set(LDFLAGS ${LDFLAGS}
    
)

# Library Files
set(LIBS
    Platform
)

# Compile Include Paths
set(INCS
    ${CMAKE_CURRENT_SOURCE_DIR}/Inc
    ${CMAKE_SOURCE_DIR}/source/Lib/CMSIS/Include
    ${CMAKE_SOURCE_DIR}/source/Lib/CMSIS/Core/Include
    ${CMAKE_SOURCE_DIR}/source/Lib/CMSIS/Device/ST/STM32F3xx/Include
    ${CMAKE_SOURCE_DIR}/source/Lib/STM32F3xx_HAL_Driver/Inc
    ${CMAKE_SOURCE_DIR}/source/Lib/STM32F3xx_HAL_Driver/Inc/Legacy
)

# Source Files
file(GLOB_RECURSE CSRC  ./ *.c)
file(GLOB_RECURSE ASRC  ./ *.s)
file(GLOB_RECURSE SCT   ./ *.sct)

# To Generate Executable File, Include Template
include("${CMAKE_SOURCE_DIR}/CMakeTools/Template/Application.cmake")

# To Generate Binary Files, Include Template
include("${CMAKE_SOURCE_DIR}/CMakeTools/Template/Binary.cmake")
