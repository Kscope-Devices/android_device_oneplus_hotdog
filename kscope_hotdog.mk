#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdog device
$(call inherit-product, device/oneplus/hotdog/device.mk)

# Inherit some common Kaleidoscope stuff.
$(call inherit-product, vendor/kscope/target/product/mobile.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := kscope_hotdog
PRODUCT_DEVICE := hotdog
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1910
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7TPro
PRODUCT_SYSTEM_DEVICE := OnePlus7TPro

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7TPro_EEA/OnePlus7TPro:10/QKQ1.190716.003/1910120055:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7TPro \
    TARGET_PRODUCT=OnePlus7TPro \
    PRIVATE_BUILD_DESC="OnePlus7TPro_EEA-user 10 QKQ1.190716.003 1910120055 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
