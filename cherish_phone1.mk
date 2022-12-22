#
# Copyright (C) 2022 The Nameless-AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nothing/phone1/device.mk)

# Inherit from the Cherish configuration.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Bootanimation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := phone1
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A063
PRODUCT_NAME := cherish_phone1
PRODUCT_SYSTEM_DEVICE := Spacewar
PRODUCT_SYSTEM_NAME := Spacewar

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-nothing
TARGET_GAPPS_ARCH := arm64

# Override device name for Play Store.
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
    
BUILD_FINGERPRINT := Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1669043157:user/release-keys

# VoidUI environment flags
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
USE_PIXEL_CHARGING := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_USES_MINI_GAPPS := false
TARGET_BUILD_WITH_LTO := false

# VoidUI maintainer flags
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=Mejsi
CHERISH_BUILD_TYPE := OFFICIAL

