#
# Copyright (C) 2020 AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := RMX1992

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := omni_realme_x2
PRODUCT_DEVICE := realme_x2
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme x2
PRODUCT_MANUFACTURER := Realme

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.device \
    ro.product.name \
    ro.build.product
