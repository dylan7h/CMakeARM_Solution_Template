# Converting Binary File From AXF File
add_custom_target(${PROJECT_NAME}.bin DEPENDS ${PROJECT_NAME}
    WORKING_DIRECTORY ${BUILD_OUTPUT_DIRECTORY}
    COMMAND ${CMAKE_FROMELF} --bin --output ${CMAKE_PROJECT_NAME}_${PROJECT_NAME}_${TODAY}.bin ${PROJECT_NAME}.axf
    COMMENT "----- Generate Binary File From ${PROJECT_NAME}.axf -----"
)

# Converting Hex File From AXF File
add_custom_target(${PROJECT_NAME}.hex DEPENDS ${PROJECT_NAME}
    WORKING_DIRECTORY ${BUILD_OUTPUT_DIRECTORY}
    COMMAND ${CMAKE_FROMELF} --vhx --64x1 --output ${CMAKE_PROJECT_NAME}_${PROJECT_NAME}_${TODAY}.hex ${PROJECT_NAME}.axf
    COMMENT "----- Generate Hex File From ${PROJECT_NAME}.axf -----"
)

# Converting Asm File From AXF File
add_custom_target(${PROJECT_NAME}.asm DEPENDS ${PROJECT_NAME}
    WORKING_DIRECTORY ${BUILD_OUTPUT_DIRECTORY}
    COMMAND ${CMAKE_FROMELF} --text -c --output ${CMAKE_PROJECT_NAME}_${PROJECT_NAME}_${TODAY}.asm ${PROJECT_NAME}.axf
    COMMENT "----- Generate asm File From ${PROJECT_NAME}.axf -----"
)

# Add "${PROJECT_NAME}-all" Traget
add_custom_target(${PROJECT_NAME}-all ALL 
    DEPENDS ${PROJECT_NAME}.bin ${PROJECT_NAME}.hex ${PROJECT_NAME}.asm
)
