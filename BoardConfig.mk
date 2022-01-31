
# Copyright (C) 2019-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
-include device/asus/sm8150-common/BoardConfigCommon.mk

BOARD_VENDOR := asus

DEVICE_PATH := device/asus/I01WD

# Assertions
TARGET_OTA_ASSERT_DEVICE := WW_I01WD

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/zs630kl_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_SOURCE := kernel/asus/sm8150

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/driver/dclick"

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Inherit from the proprietary version
-include vendor/asus/I01WD/BoardConfigVendor.mk
