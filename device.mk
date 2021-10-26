#
# Copyright (C) 2019-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes_ZS660KL.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes_ZS660KL.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_qrd.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_ZS660KL.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_ZS660KL.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_ZS660KL.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration_ZS660KL.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_ZS660KL_24bit.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration_ZS660KL_24bit.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.asus_msmnile

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Get non-open-source specific aspects
$(call inherit-product, vendor/asus/I001D/I001D-vendor.mk)

# sm8150-common
$(call inherit-product, device/asus/sm8150-common/common.mk)
