#  Assembler Defines
set(ADEFINES
    ${VENDOR_ADEFINES}
)

#  C Defines
set(CDEFINES
    ${VENDOR_CDEFINES}
)

# Assembler Options
set(AFLAGS
    ${VENDOR_AFLAGS}
    --cpu=${ARM_ASM_CORE}
)

# Compiler Options
set(CFLAGS 
    ${VENDOR_CFLAGS}
    -march=${ARM_ARCH}
    -mfpu=${FPU}
    -mfloat-abi=${FLOAT_ABI}
    -std=${STD_C}
)

# Linker Options
set(LDFLAGS 
    ${VENDOR_LDFLAGS}
    --library_type=${ARM_LIB_TYPE}
    --datacompressor=off 
    --entry=${ENTRY}
    --startup=${STARTUP}
    --info=${TOPIC}
)
