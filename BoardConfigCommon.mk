# Lunarixus waz ere
# 2k20

# Fix inline kernel building
BUILD_BROKEN_PHONY_TARGETS := true

TARGET_KERNEL_CLANG_COMPILE := false
TARGET_KERNEL_SOURCE := kernel/google/marlin
TARGET_KERNEL_CONFIG := marlin_defconfig
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
