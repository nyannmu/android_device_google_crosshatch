#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution X stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

TARGET_IS_PIXEL := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

include device/google/crosshatch/crosshatch/device-evolution.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3 XL
PRODUCT_NAME := evolution_crosshatch

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 12 SP1A.210812.016.C2 8618562 release-keys"

BUILD_FINGERPRINT := google/crosshatch/crosshatch:12/SP1A.210812.016.C2/8618562:user/release-keys

$(call inherit-product, vendor/google/crosshatch/crosshatch-vendor.mk)
