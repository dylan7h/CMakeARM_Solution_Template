########################################## [ARM Core & Architecture Matching Table ] ############################################################
# Arm Core	        | Cortex M0	| Cortex M0+ | Cortex M1 | Cortex M3 | Cortex M4 | Cortex M7 | Cortex M23 | Cortex M33 | Cortex M35P | Cortex M55
# ARM architecture	| ARMv6-M	| ARMv6-M	 | ARMv6-M	 | ARMv7-M   | ARMv7E-M	 | ARMv7E-M	 | ARMv8-M    | ARMv8-M	   | ARMv8-M	 | Armv8.1-M
#################################################################################################################################################

# -------------- Target ABI -------------------
# 32bit: arm        | 64bit: aarch64
set(TARGET_ABI              arm)

# -------------- Core Name -------------------- 
# To See >> armclang --target=<Target ABI>-arm-none-eabi -mcpu=list
set(ARM_C_CORE              cortex-m4)
# To See >> armasm --cpu=list
set(ARM_ASM_CORE            Cortex-M4.fp.sp)

# -------------- Core Arch --------------------
# To See >> armclang --target=arm-arm-none-eabi -march=list
set(ARM_ARCH                armv7e-m)

# -------------- FPU --------------------------
# To See >> armclang --target=arm-arm-none-eabi -mfpu=list
set(FPU                     fpv4-sp-d16)

# -------------- FLOATING ABI -----------------
# -mfloat-abi=[ soft | softfp | hard ]
# To See More Information
# http://infocenter.arm.com/help/topic/com.arm.doc.dui0774g/chr1417451577871.html
set(FLOAT_ABI               hard)

# Instruction Set([-m${ARM_MODE}], arm | thumb)
# -marm:    http://infocenter.arm.com/help/topic/com.arm.doc.dui0774g/chr1385546380826.html
# -mthumb:  http://infocenter.arm.com/help/topic/com.arm.doc.dui0774g/chr1385546391098.html
set(ARM_MODE                thumb)
