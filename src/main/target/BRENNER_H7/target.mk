# MCU family for H743VI
MCU_GROUP := H743
TARGET_MCU := STM32H743VI

# Register in correct family
H743_TARGETS += BRENNER_H7

# Board name
TARGET_BOARD := BRENNER_H7

# Flash & RAM size
FLASH_SIZE := 2048
RAM_SIZE := 512

# Linker script (Thunder uses same)
LINKER_SCRIPT := stm32h743xg

# Drivers
DRIVERS += gyro_icm42688p
DRIVERS += baro_bmp388

# Avoid Werror breaks
CFLAGS += -Wno-error

# Required by BF build system
TARGET_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
