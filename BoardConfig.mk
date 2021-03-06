#
# Copyright (C) 2016 The CyanogenMod Project
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

# Device path
LOCAL_PATH := device/lenovo/A7010a48

# Dont build seperate vendor img
TARGET_COPY_OUT_VENDOR := system/vendor

# Device board elements
include $(LOCAL_PATH)/board/*.mk

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

#######################################################################

# Kernel
TARGET_KMODULES := false
BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board A7010a48
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/lenovo/A7010a48
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := k5fpr_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 firmware_class.path=/system/vendor/firmware androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_NAME := A7010a48

# Init
TARGET_INIT_VENDOR_LIB := libinit_mtk
TARGET_RECOVERY_DEVICE_MODULES := libinit_mtk

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/lib/libui.so|/system/vendor/lib/libmtk_ui.so \
    /system/lib64/libui.so|/system/vendor/lib64/libmtk_ui.so \
    /system/lib/liblog.so|/system/vendor/lib/libmtk_xlog.so \
    /system/lib64/liblog.so|/system/vendor/lib64/libmtk_xlog.so \
    /system/lib/libnetutils.so|/system/vendor/lib/libmtk_ifc.so \
    /system/lib64/libnetutils.so|/system/vendor/lib64/libmtk_ifc.so \
    /system/vendor/lib/hw/audio.primary.mt6753.so|/system/vendor/lib/libmtk_audio.so \
    /system/vendor/lib64/hw/audio.primary.mt6753.so|/system/vendor/lib64/libmtk_audio.so

# EGL
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 0

# Platform
TARGET_BOARD_PLATFORM := mt6753
TARGET_BOOTLOADER_BOARD_NAME := mt6753

# Images
TARGET_NO_BOOTLOADER := true

# HIDL
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true

# Architecture Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true

# System.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy
