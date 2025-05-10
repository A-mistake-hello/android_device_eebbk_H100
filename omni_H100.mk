#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from H100 device
$(call inherit-product, device/eebbk/H100/device.mk)

PRODUCT_DEVICE := H100
PRODUCT_NAME := omni_H100
PRODUCT_BRAND := EEBBK
PRODUCT_MODEL := S1W
PRODUCT_MANUFACTURER := eebbk

PRODUCT_GMS_CLIENTID_BASE := android-eebbk

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="H100_ctcc-user 9 PPR1.180610.011 V1.3.8_210831 release-keys"

BUILD_FINGERPRINT := EEBBK/H100_ctcc/H100:9/PPR1.180610.011/V1.3.8_210831:user/release-keys
