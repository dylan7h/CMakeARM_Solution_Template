# Set Executable Target
add_executable(${PROJECT_NAME} ${CSRC} ${ASRC})

# Set Include Path
target_include_directories(${PROJECT_NAME} PRIVATE ${INCS})

# Set Compile Definition
target_compile_definitions(${PROJECT_NAME} PRIVATE
    $<$<COMPILE_LANGUAGE:C>:${CDEFINES}>
    $<$<COMPILE_LANGUAGE:ASM>:${ADEFINES}>
)

# Set Compile Option
target_compile_options(${PROJECT_NAME} PRIVATE
    $<$<COMPILE_LANGUAGE:C>:${CFLAGS}>
    $<$<COMPILE_LANGUAGE:ASM>:${AFLAGS}>
) 

# Set Link Option
target_link_options(${PROJECT_NAME} PRIVATE ${LDFLAGS} --scatter=${SCT})

# Set Link Library
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBS})

# Set "Build Output Directory"
set(BUILD_OUTPUT_DIRECTORY  ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME})
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${BUILD_OUTPUT_DIRECTORY})

# Add Clean Rule
set_directory_properties(PROPERTIES ADDITIONAL_CLEAN_FILES ${BUILD_OUTPUT_DIRECTORY})
