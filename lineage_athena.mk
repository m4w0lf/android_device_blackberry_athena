#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device
$(call inherit-product, device/blackberry/athena/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := blackberry
PRODUCT_DEVICE := bbf100
PRODUCT_MANUFACTURER := BlackBerry
PRODUCT_MODEL := KEY2
PRODUCT_NAME := lineage_athena

# need to keep old FPs from oreo for play certification
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bbf100global 8 OPM1.171019.026 ACQ160 release-keys" \
    BuildFingerprint=blackberry/bbf100global/bbf100:8.1.0/OPM1.171019.026/ACQ160:user/release-keys \
    DeviceProduct=bbf100global
