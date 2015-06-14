$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/p710/p710-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p710/overlay

LOCAL_PATH := device/lge/p710
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/fstab.p710:root/fstab.p710 
	#$(LOCAL_PATH)/fstab_cwm.p710:root/fstab_cwm.p710 \
	#$(LOCAL_PATH)/init.rc:root/init.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p710
PRODUCT_DEVICE := p710
