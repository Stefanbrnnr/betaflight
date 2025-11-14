# MCU type
MCU_GROUP := H743X
TARGET_MCU := STM32H743

# Register target
H743X_TARGETS += BRENNER_H7

# Board name
TARGET_BOARD := BRENNER_H7

# Flash + RAM
FLASH_SIZE := 2048
RAM_SIZE := 512

# Linker script for H743
LINKER_SCRIPT := stm32h743xg

# Drivers
DRIVERS += gyro_icm42688p
DRIVERS += baro_bmp388

# Avoid build errors from warnings
CFLAGS += -Wno-error

# Required by Betaflight build system
TARGET_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
