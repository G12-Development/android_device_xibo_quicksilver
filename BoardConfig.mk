#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xibo/quicksilver

## Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
BOARD_CUSTOM_BT_CONFIG := $(DEVICE_PATH)/bluetooth/vnd_quicksilver_lpm.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := quicksilver

## DTB
TARGET_DTB_NAME := g12b_a311d_w200_dscs9x

# GPU
TARGET_AMLOGIC_GPU_ARCH := bifrost
MALI_DRV_VERSION := r16p0

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := g12_variant_defconfig
BOARD_KERNEL_CMDLINE += --cmdline "root=/dev/mmcblk0p18"

## Media
TARGET_IGNORES_ACODEC_ALLOC_FATAL += true

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# SOC
TARGET_AMLOGIC_SOC := g12b
TARGET_BOARD_PLATFORM := g12b
TARGET_USES_P_MODULES := true

## Wi-Fi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_AP := "/vendor/etc/wifi/6255/fw_bcm43455c0_ag.bin"
WIFI_DRIVER_FW_PATH_STA := "vendor/etc/wifi/6255/fw_bcm43455c0_ag_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

## Include the common tree BoardConfig makefile
include device/amlogic/gx-common/BoardConfigCommon.mk

include vendor/xibo/quicksilver/BoardConfigVendor.mk
