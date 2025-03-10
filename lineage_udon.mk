#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from udon device
$(call inherit-product, device/oneplus/udon/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_udon
PRODUCT_DEVICE := udon
PRODUCT_MANUFACTURER := oplus
PRODUCT_BRAND := oplus
PRODUCT_MODEL := CPH2487
TARGET_USES_OPLUS_CAMERA := true

PRODUCT_SYSTEM_NAME := CPH2487
PRODUCT_SYSTEM_DEVICE := OP5961L1

# Matrixx
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := EduardoA3677
WITH_GMS := true

# Extra Matrixx Stuff
MATRIXX_CHIPSET := SM8475
MATRIXX_BATTERY := 5000mah
MATRIXX_DISPLAY := 1240x2772
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CPH2487-user 13 SKQ1.220905.001 R4T3.1057738-62b8-3b9 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/CPH2487/OP5961L1:13/SKQ1.221119.001/T.R4T3.1057738-62b8-3b9:user/release-keys
