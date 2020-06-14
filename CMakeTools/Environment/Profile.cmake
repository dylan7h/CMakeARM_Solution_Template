# arm-arm-none-eabi | aarch64-arm-none-eabi
set(COMPILER_TARGET         arm-arm-none-eabi)

# Core Info
set(ARM_C_CORE              cortex-m4)
set(ARM_ASM_CORE            Cortex-M4.fp.sp)

# FPU
set(FPU                     fpv4-sp-d16)

# FLOATING ABI
set(FLOAT_ABI               hard)

# ARM MODE
set(ARM_MODE                thumb)

# C Standard Version
set(C_STD                   c99)

# Linker Entry
set(LINKER_ENTRY            Reset_Handler)

# Linke Startup
set(LINKER_STARTUP          main)

# Map File Output Informations
set(MAP_INFO                sizes,totals,unused,veneers)
