# MCU family
MCU_GROUP := H7X3XI
TARGET_MCU := STM32H743

# Target name
TARGET := BRENNER_H7

# Register in H743 groups
H743xI_TARGETS += BRENNER_H7

# Kein target.c nötig – kein Boardcode
# Keine TARGET_SRC-Zeile

# Nur die Treiber die du hast
DRIVERS += gyro_icm42688p
DRIVERS += baro_bmp388

# Flash-Treiber entfernt!
# DRIVERS += flash_w25q128fv   ← löschen!

# Zuverlässigkeit erhöhen
CFLAGS += -Wno-error
