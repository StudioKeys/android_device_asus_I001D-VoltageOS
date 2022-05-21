#
# Copyright (C) 2019-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-bliss

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes_ZS660KL.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes_ZS660KL.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml \
    $(LOCAL_PATH)/audio/mixer_paths_ZS660KL.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_ZS660KL.xml \
    $(LOCAL_PATH)/audio/mixer_paths_ZS660KL_EU.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_ZS660KL_EU.xml \
    $(LOCAL_PATH)/audio/mixer_paths_pahu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_pahu.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_qrd.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_ZS660KL.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_ZS660KL.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_ZS660KL.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration_ZS660KL.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_ZS660KL_24bit.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration_ZS660KL_24bit.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9340.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9340.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.device.rc

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.asus_msmnile

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/fts_ts.idc:system/usr/idc/fts_ts.idc \
    $(LOCAL_PATH)/idc/goodix_ts.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/goodix_ts.idc \
    $(LOCAL_PATH)/idc/goodix_ts_station.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/goodix_ts_station.idc \
    $(LOCAL_PATH)/keychars/goodix_ts.kcm:$(TARGET_COPY_OUT_SYSTEM)/usr/keychars/goodix_ts.kcm \
    $(LOCAL_PATH)/keylayout/goodix_ts.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/goodix_ts.kl \
    $(LOCAL_PATH)/keylayout/fts_ts.kl:system/usr/keylayout/fts_ts.kl \
    $(LOCAL_PATH)/keylayout/goodixfp.kl:system/usr/keylayout/goodixfp.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.2-service.I001D

# Get non-open-source specific aspects
$(call inherit-product, vendor/asus/I001D/I001D-vendor.mk)

# sm8150-common
$(call inherit-product, device/asus/sm8150-common/common.mk)
