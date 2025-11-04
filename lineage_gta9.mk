#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/samsung/gta9/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

PRODUCT_NAME := lineage_gta9
PRODUCT_DEVICE := gta9
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X115
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT := samsung/gta9xx/gta9:16/UP1A.260101.001/X115XXU6CYZ9:user/release-keys
