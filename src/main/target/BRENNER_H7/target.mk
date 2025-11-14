# MCU family
MCU_GROUP := H743X
TARGET_MCU := STM32H743

# Board name
TARGET_BOARD := BRENNER_H7

# Flash + RAM size for H743
FLASH_SIZE := 2048
RAM_SIZE := 512

# Correct linker script for Betaflight H743
LINKER_SCRIPT := stm32h743xg

# Ensure Betaflight includes this target
H743X_TARGETS += BRENNER_H7

# Add only your drivers
DRIVERS += gyro_icm42688p
DRIVERS += baro_bmp388

# Prevent warnings from breaking the build
CFLAGS += -Wno-error

# Required by Betaflight build system
TARGET_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
