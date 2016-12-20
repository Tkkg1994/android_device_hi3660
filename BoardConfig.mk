LOCAL_PATH := device/huawei/generic_a15

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := hi3660

# Platform
TARGET_BOARD_PLATFORM := hi3660
TARGET_BOARD_PLATFORM_GPU := mali-g71

# Flags
#TARGET_GLOBAL_CFLAGS +=
#TARGET_GLOBAL_CPPFLAGS +=
#COMMON_GLOBAL_CFLAGS +=

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
BOARD_KERNEL_BASE := 0x00078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := loglevel=4 initcall_debug=n page_tracker=on androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x07988000
TARGET_PREBUILT_KERNEL := device/huawei/generic_a15/Image

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE		:= 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE	:= 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE	:= 4915724288
BOARD_USERDATAIMAGE_PARTITION_SIZE	:= 56547606528
BOARD_CACHEIMAGE_PARTITION_SIZE		:= 268435456
BOARD_FLASH_BLOCK_SIZE			:= 4096

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB565"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/class/power_supply/Battery"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.gs6/lun.0/file"
TW_MAX_BRIGHTNESS := 7992
TW_DEFAULT_BRIGHTNESS := 1573
TW_INCLUDE_NTFS_3G := true

# No love for the wicked (device ships with N)
TW_EXCLUDE_SUPERSU := true

# Asian region languages
TW_EXTRA_LANGUAGES := true

# Encryption support
TW_INCLUDE_CRYPTO := true

# Debug flags
TWRP_INCLUDE_LOGCAT := true

# Abuse unified device and system.prop to match props for OTA compatibility
TARGET_UNIFIED_DEVICE := true
