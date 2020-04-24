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

TARGET_BOARD_INFO_FILE := device/samsung/n7000/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/n7000/bluetooth

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
ifeq ($(WITH_RAMDISK),true)
TARGET_KERNEL_CONFIG := lineageos_n7000_defconfig
else
TARGET_KERNEL_CONFIG := lineageos_n7000_noramdisk_defconfig
endif

# assert
TARGET_OTA_ASSERT_DEVICE := galaxynote,n7000,N7000,GT-N7000

# Security patch level
VENDOR_SECURITY_PATCH := 2013-01-24

# Use the non-open-source parts, if they're present
-include vendor/samsung/n7000/BoardConfigVendor.mk
