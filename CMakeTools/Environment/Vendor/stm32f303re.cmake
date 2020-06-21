###################################################################
######################### [ ASM Options ] #########################
###################################################################

# ASM Defines
set(VENDOR_ADEFINES

)

# ASM Compile Option
set(VENDOR_AFLAGS
    --brief_diagnostics
    --pd "__MICROLIB SETA 1"
    --debug --keep
)

###################################################################
########################## [ C Options ] ##########################
###################################################################

# --------------------- < Required options > --------------------- 
set(STD_C   c99)    # C Standard Version(ex. c89 | c99 | c11)



# --------------------- < Optional options > ---------------------
set(VENDOR_CDEFINES
    # [ C Defines ]
    STM32F303xC=1
    USE_HAL_DRIVER=1
    __MICROLIB=1
)

set(VENDOR_CFLAGS
    #[ C Compile Option ]
    -fno-function-sections 
    -fno-data-sections
    --debug
)

###################################################################
######################## [ Link Options ] #########################
###################################################################

# --------------------- < Required options > --------------------- 
set(TOPIC                       # --info=$(TOPIC) : Prints information about specific topics.
    # To See More Information 
    # http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0803i/lhk1509547142478.html
    sizes,totals,unused,veneers
)
set(ARM_LIB_TYPE 
    # Default: standardlib
    # To See More Information 
    # http://infocenter.arm.com/help/topic/com.arm.doc.dui0803g/pge1362075508314.html
    microlib
)
set(ENTRY       Reset_Handler)  #  --entry:         This option specifies the unique initial entry point of the image.
set(STARTUP     main)           #  --startup:       Enables the linker to use alternative C libraries with a different startup symbol if required.


# --------------------- < Optional options > ---------------------
set(VENDOR_LDFLAGS
    --diag_style=ide
    --verbose
    --symbols 
    --remove
    --callgraph 
    --summary_stderr
    --load_addr_map_info 
)

###################################################################
###################### [ Include Options ] ########################
###################################################################

# Include Target Core Profile
include("${CMAKE_SOURCE_DIR}/CMakeTools/Environment/Core/Cortex-M4.cmake")

# Set Compiler
set(CMAKE_TOOLCHAIN_FILE "${CMAKE_SOURCE_DIR}/CMakeTools/Compiler/ArmCompiler6/ToolChain.cmake")

# Include Build & Linker Option Profile
include("${CMAKE_SOURCE_DIR}/CMakeTools/Compiler/ArmCompiler6/BuildOptions.cmake")

# Change Default Build Options
set(CMAKE_USER_MAKE_RULES_OVERRIDE  "${CMAKE_SOURCE_DIR}/CMakeTools/Environment/RulesOverride.cmake")
