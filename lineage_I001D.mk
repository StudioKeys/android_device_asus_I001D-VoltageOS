#
# Copyright (C) 2019-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/asus/I001D/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := asus
PRODUCT_DEVICE := I001D
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := ASUS_I001D
PRODUCT_NAME := lineage_I001D

PRODUCT_GMS_CLIENTID_BASE := android-asus

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ZS660KL \
    PRODUCT_NAME=WW_I001D

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="WW_I001D-user 11 RKQ1.200710.002 18.0210.2201.211-0 release-keys"

BUILD_FINGERPRINT := asus/WW_I001D/ASUS_I001_1:11/RKQ1.200710.002/18.0210.2201.211-0:user/release-keys
