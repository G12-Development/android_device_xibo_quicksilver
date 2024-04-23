#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_DEVICE), quicksilver)

LOCAL_PATH := $(call my-dir)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(LOCAL_PATH)/factory.mk

-include vendor/xibo/quicksilver/firmware.mk

endif
