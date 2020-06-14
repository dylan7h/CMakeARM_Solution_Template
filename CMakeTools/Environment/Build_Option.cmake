# Include Build Options
set(ADEFINES
     
)

set(CDEFINES
    STM32F303xC=1
    USE_HAL_DRIVER=1
    __MICROLIB=1
)

# Assembler Options
set(AFLAGS
    --pd "__MICROLIB SETA 1"
    --cpu=${ARM_ASM_CORE}
    --debug
)

# Compiler Options
set(CFLAGS 
    -mfpu=${FPU}
    -mfloat-abi=${FLOAT_ABI}
    -m${ARM_MODE}
    -std=${C_STD}
    --debug
)

# Linker Options
set(LDFLAGS 
    --datacompressor=off 
    --entry=${LINKER_ENTRY}
    --library_type=microlib
    --symbols 
    --remove
    --info=${MAP_INFO}
    --callgraph 
    --summary_stderr
    --load_addr_map_info 
    --startup=${LINKER_STARTUP} 
)
