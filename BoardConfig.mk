# inherit from the proprietary version
-include vendor/lge/p710/BoardConfigVendor.mk

# Platform
TARGET_NO_BOOTLOADER 		:= true
TARGET_NO_RADIOIMAGE		:= true

# Info
TARGET_ARCH 					:= arm
TARGET_BOARD_PLATFORM 			:= msm7x27a
TARGET_CPU_ABI 					:= armeabi-v7a
TARGET_CPU_ABI2 				:= armeabi
TARGET_ARCH_VARIANT				:= armv7-a-neon
TARGET_CPU_VARIANT 				:= cortex-a9
TARGET_CPU_SMP 					:= true
ARCH_ARM_HAVE_TLS_REGISTER 		:= true
TARGET_BOOTLOADER_BOARD_NAME 	:= p710

# Kernel stuff building
TARGET_PREBUILT_KERNEL 	:= device/lge/p710/kernel
BOARD_KERNEL_CMDLINE 	:= androidboot.hardware=vee7 msm_cpr.enable=0 androidboot.selinux=permissive enforcing=0
BOARD_KERNEL_BASE 		:= 0x00200000
BOARD_KERNEL_PAGESIZE	:= 4096
BOARD_MKBOOTIMG_ARGS 	:= --ramdisk_offset 0x01300000

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1270874112
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1941962752
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery Global
RECOVERY_VARIANT					:= twrp6
TARGET_RECOVERY_PIXEL_FORMAT 		:= RGBX_8888
TARGET_USE_CUSTOM_LUN_FILE_PATH 	:= /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_UMS_LUNFILE					:= /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_HAS_LARGE_FILESYSTEM 			:= true
TARGET_USERIMAGES_USE_EXT4			:= true
RECOVERY_GRAPHICS_USE_LINELENGTH 	:= true
DEVICE_RESOLUTION					:= 480x800
BOARD_HAS_NO_SELECT_BUTTON 			:= true
BOARD_HAS_NO_MISC_PARTITION 		:= true
TARGET_RECOVERY_QCOM_RTC_FIX 		:= true
BOARD_HAS_FLIPPED_SCREEN			:= true

# Recovery (twrp)
TW_NO_REBOOT_BOOTLOADER 			:= true
TW_BRIGHTNESS_PATH					:= /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS 					:= 225
TARGET_RECOVERY_FSTAB 				:= device/lge/p710/fstab.p710
RECOVERY_SDCARD_ON_DATA 			:= true 
TW_EXTERNAL_STORAGE_PATH 			:= "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT 	:= "sdcard"
TW_INTERNAL_STORAGE_PATH 			:= "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT 	:= "data"

# Recovery (cwm)
#TARGET_RECOVERY_FSTAB 				:= device/lge/p710/fstab_cwm.p710
#RECOVERY_FSTAB_VERSION 			:= 2
#BOARD_RECOVERY_SWIPE				:= true
#BOARD_USES_MMCUTILS 				:= true
#BOARD_CUSTOM_GRAPHICS  			:= ../../../device/lge/p710/recovery/graphics.c
#BOARD_USE_CUSTOM_RECOVERY_FONT		:= "<roboto_10x18.h>"

#Recovery (philz) -> use cwm + this flags
#TARGET_SCREEN_HEIGHT				:= 800
#TARGET_SCREEN_WIDTH				:= 480



