#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/galaxys2-common/BoardCommonConfig.mk

# Use old kernel toolchain. 
# TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

TARGET_BOARD_INFO_FILE := device/samsung/n7000/board-info.txt

# CM overlay to  frameworks/opt/hardware/src/
BOARD_HARDWARE_CLASS += device/samsung/n7000/cmhw

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/n7000/bluetooth

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/tw_n7000
# TARGET_KERNEL_SOURCE := kernel/samsung/smdk4210
# TARGET_KERNEL_SOURCE := kernel/samsung/twexp


TARGET_KERNEL_CONFIG := lineageos_n7000_defconfig
# assert
TARGET_OTA_ASSERT_DEVICE := galaxynote,n7000,N7000,GT-N7000,GT-I9220,I9220,i9220

# TWRP
TW_THEME := portrait_hdpi
TWRP_NEW_THEME := true
HAVE_SELINUX := true
TW_MAX_BRIGHTNESS := 255
TW_INCLUDE_CRYPTO := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_INTERNAL_STORAGE_PATH := "/sdcard0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard0"
TW_EXTERNAL_STORAGE_PATH := "/sdcard1"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard1"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/platform/s5p-tmu/temperature"

# Use the non-open-source parts, if they're present
-include vendor/samsung/n7000/BoardConfigVendor.mk
