#=============================================================================
#============================= Variable Section ==============================
#=============================================================================
# Show Compile Log
VERBOSE		:= OFF

# Select Build Type( Debug | Release )
BUILD_TYPE := Debug

# Generator( "Unix Makefiles" | ... )
GENERATOR := "Unix Makefiles"

# Top CMakeLists.txt Path
HOME_DIR  := .

# CMake Build System Path
BUILD_DIR := build

# Target
target := all

#=============================================================================
#========================== Custom Target Section ============================
#=============================================================================

#=============================================================================
# Config & Build
all: config
	cmake --build $(BUILD_DIR) --target $(target)
.PHONY : all	

#=============================================================================
# Generate CMake Build System
config:
	cmake -B$(BUILD_DIR) -H$(HOME_DIR) -G $(GENERATOR) -DCMAKE_BUILD_TYPE=$(BUILD_TYPE) -DCMAKE_VERBOSE_MAKEFILE=$(VERBOSE)
.PHONY : config

#=============================================================================
# Help
help: config
	cmake --build $(BUILD_DIR) --target help
	@echo [ Usage ]
	@echo "make target=[Target Name]"
.PHONY : clean	

#=============================================================================
# Remove CMake Build System
remove:
	cmake -E remove_directory $(BUILD_DIR)
.PHONY : remove

#=============================================================================
# Clean & Build
rebuild:
	cmake --build $(BUILD_DIR) --clean-first --target $(TARGET)
.PHONY : rebuild	

#=============================================================================
# Clean All
clean:
	cmake --build $(BUILD_DIR) --target clean
.PHONY : clean	
