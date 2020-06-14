# CMake Minimum Required Version Information
cmake_minimum_required(VERSION 3.15)

string(TIMESTAMP TODAY "%Y%m%d")

# Include Profile Information
include("CMakeTools/Environment/Profile.cmake")

# Set ToolChain( Compiler Information )
set(CMAKE_TOOLCHAIN_FILE            "CMakeTools/Environment/ToolChain.cmake")

# Change Default Build Options
set(CMAKE_USER_MAKE_RULES_OVERRIDE  "CMakeTools/Environment/Build_Type.cmake")

# Export Compile Command
set(CMAKE_EXPORT_COMPILE_COMMANDS   ON)

# Describe project information.
project(
    # Project Name
    STM32F303RE
    # Version <Major>.<Minor>.<Patch>.<Tweak>
    VERSION         0.0.0.1
    # Project Language
    LANGUAGES       C ASM
)

# Inculde Pre Defined Build Options
include("CMakeTools/Environment/Build_Option.cmake")

# Change Default Build Result Path
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY          ${CMAKE_HOME_DIRECTORY}/bin/App)    # *.exe | *.out | *.elf | *.axf | *.dll | *.so
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY          ${CMAKE_HOME_DIRECTORY}/bin/Lib)    # *.dll.a | *.so.a
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY          ${CMAKE_HOME_DIRECTORY}/bin/Lib)    # *.lib | *.a

# Jump Libraries
add_subdirectory(source/Lib/STM32F3xx_HAL_Driver)

# Jump Applications
add_subdirectory(source/App/TestApp_A)
