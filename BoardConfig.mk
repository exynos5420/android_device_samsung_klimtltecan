#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/klimtltecan

# Platform
BOARD_VENDOR := samsung
TARGET_SOC := exynos5420

# Audio
TARGET_AUDIOHAL_VARIANT := samsung

# RIL
BOARD_PROVIDES_LIBRIL := true
# hardware/samsung/ril
BOARD_MODEM_TYPE := xmm7260

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_OTA_ASSERT_DEVICE := klimtltecan

# Kernel
TARGET_KERNEL_CONFIG := lineageos_deathly_klimtltecan_defconfig

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# LineageOS Hardware
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/lineagehw

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 6406144 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11303649280
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/exynos5420-common/sepolicy
BOARD_SEPOLICY_DIRS += device/samsung/klimtltecan/sepolicy

# Cyanogen Hardware
BOARD_HARDWARE_CLASS := $(COMMON_PATH)/cmhw

# Camera: portrait orientation
BOARD_CAMERA_FRONT_ROTATION := 270
BOARD_CAMERA_BACK_ROTATION := 90

# Inherit from exynos5420-common
include device/samsung/exynos5420-common/BoardConfigCommon.mk
