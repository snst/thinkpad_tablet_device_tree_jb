#Camera
USE_CAMERA_STUB := false
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# Audio Build Options
#BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_ALSA_AUDIO := true
#BUILD_WITH_ALSA_UTILS := false
#USE_PROPRIETARY_AUDIO_EXTENSIONS := true

# Audio library
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB

# inherit from the proprietary version
-include vendor/LENOVO/Indigo/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_CPU_SMP := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERYIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_BOOTLOADER_BOARD_NAME := Indigo

# Kernel
TARGET_KERNEL_SOURCE := kernel/LENOVO/Indigo
TARGET_KERNEL_CONFIG := tpt_kernel_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
#TARGET_PREBUILT_KERNEL := device/LENOVO/Indigo/kernel

NEED_WORKAROUND_CORTEX_A9_745320 := true
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# Wifi related defines
WPA_SUPPLICANT_VERSION      := VER_0_8_X
#BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#BOARD_WLAN_DEVICE           := bcm4329
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
#WIFI_DRIVER_MODULE_NAME     := "bcm4329"
#WIFI_DRIVER_MODULE_ARG      := "iface_name=wlan0 firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/etc/nvram.txt"
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/LENOVO/Indigo/bluetooth/vnd_Indigo.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/LENOVO/Indigo/bluetooth

BOARD_HAVE_GPS := true

BOARD_HAS_SDCARD_INTERNAL := true

USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/LENOVO/Indigo/proprietary/lib/egl/egl.cfg
BOARD_USES_HGL := true
BOARD_EGL_NEEDS_LEGACY_FB := true

BOARD_DATA_DEVICE := /dev/block/mmcblk0p10
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p4
BOARD_CACHE_FILESYSTEM := ext4

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13249806336
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# More recovery flags
#TARGET_RECOVERY_PRE_COMMAND := "echo 'boot-recovery' > /dev/block/mmcblk0p5; sync"
