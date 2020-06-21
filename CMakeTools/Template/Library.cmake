# Set Library Target
add_library(${PROJECT_NAME} STATIC ${SRC})

# Set Include Directories
target_include_directories(${PROJECT_NAME} PRIVATE
    ${INCS}
) 

# Set Compile Definition
target_compile_definitions(${PROJECT_NAME} PRIVATE
    $<$<COMPILE_LANGUAGE:C>:${CDEFINES}>
    $<$<COMPILE_LANGUAGE:ASM>:${ADEFINES}>
) 

# Set Compile Option
target_compile_options(${PROJECT_NAME} PRIVATE
    $<$<COMPILE_LANGUAGE:C>:${CFLAGS}>
    $<$<COMPILE_LANGUAGE:ASM>:${ASFLAGS}>
) 
