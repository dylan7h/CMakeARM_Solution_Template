add_library(${PROJECT_NAME} STATIC ${SRC})

target_include_directories(${PROJECT_NAME} PRIVATE
    ${INCS}
) 

target_compile_definitions(${PROJECT_NAME} PRIVATE
    $<$<COMPILE_LANGUAGE:C>:${CDEFINES}>
    $<$<COMPILE_LANGUAGE:ASM>:${ADEFINES}>
) 

target_compile_options(${PROJECT_NAME} PRIVATE
    $<$<COMPILE_LANGUAGE:C>:${CFLAGS}>
    $<$<COMPILE_LANGUAGE:ASM>:${ASFLAGS}>
) 