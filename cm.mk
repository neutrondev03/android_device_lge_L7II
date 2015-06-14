## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := p710

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p710/device_p710.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p710
PRODUCT_NAME := cm_p710
PRODUCT_BRAND := lge
PRODUCT_MODEL := Neutrondev_L7_II
PRODUCT_MANUFACTURER := lge
