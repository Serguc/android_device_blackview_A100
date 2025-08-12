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
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from A100 device
$(call inherit-product, device/blackview/A100/device.mk)

PRODUCT_DEVICE := A100
PRODUCT_NAME := omni_A100
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := A100
PRODUCT_MANUFACTURER := blackview

PRODUCT_GMS_CLIENTID_BASE := android-hct

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k71v1_64_bsp-user 11 RP1A.200720.011 p1k61v164bspP33 release-keys"

BUILD_FINGERPRINT := Blackview/A100_RU/A100:11/RP1A.200720.011/1658197966:user/release-keys
