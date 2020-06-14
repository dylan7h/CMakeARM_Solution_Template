SET(CMAKE_SYSTEM_NAME       Generic)
SET(CMAKE_SYSTEM_PROCESSOR  ${ARM_C_CORE})

set(tools                   "C:/Keil_v5/ARM/ARMCLANG")

set(CMAKE_ASM_COMPILER      "${tools}/bin/armasm.exe")
set(CMAKE_C_COMPILER        "${tools}/bin/armclang.exe")
set(CMAKE_CXX_COMPILER      "${tools}/bin/armclang.exe")
set(CMAKE_FROMELF           "${tools}/bin/fromelf.exe")

set(CMAKE_AR                "${tools}/bin/armar.exe")
set(CMAKE_CXX_COMPILER_AR   "${tools}/bin/armar.exe")
set(CMAKE_C_COMPILER_AR     "${tools}/bin/armar.exe")
set(CMAKE_LINKER            "${tools}/bin/armlink.exe")

# Where is the target environment
set(CMAKE_FIND_ROOT_PATH    "${tools}")

# Search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# For libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
