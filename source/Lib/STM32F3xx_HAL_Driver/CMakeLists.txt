# CMake Minimum Required Version Information
cmake_minimum_required(VERSION 3.15)

# Describe project information.
project(
    # Project Name
    Platform
    # Version <Major>.<Minor>.<Patch>.<Tweak>
    VERSION         0.0.0.1
    # Project Description
    DESCRIPTION     "Platform Library"
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
set(ASFLAGS ${ASFLAGS}

)

# C Compiler Options
set(CFLAGS  ${CFLAGS}

)

# Compile Include Paths
set(INCS
    ${CMAKE_CURRENT_SOURCE_DIR}/../../App/TestApp_A/Inc
    ${CMAKE_CURRENT_SOURCE_DIR}/../CMSIS/Include
    ${CMAKE_CURRENT_SOURCE_DIR}/../CMSIS/Core/Include
    ${CMAKE_CURRENT_SOURCE_DIR}/../CMSIS/Device/ST/STM32F3xx/Include
    ${CMAKE_CURRENT_SOURCE_DIR}/Inc
    ${CMAKE_CURRENT_SOURCE_DIR}/Inc/Legacy
)

# Source Files
file(GLOB_RECURSE SRC ./ *.c)

# To Generate Library, Include Template
include(${CMAKE_SOURCE_DIR}/CMakeTools/Template/Library.cmake)
