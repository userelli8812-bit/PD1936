#!/bin/bash

#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# 清除所有可能冲突的变量
unset FOX_VERSION
unset OF_SUPPORT_ALL_BLOCK_OTA_UPDATES
unset OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR

# 基本构建变量
export TARGET_ARCH=arm64

# A/B 分区配置
export OF_AB_DEVICE=0
export OF_VIRTUAL_AB_DEVICE=0

# 工具配置
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_BASH_SHELL=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_GREP_BINARY=1

# 压缩配置
export OF_USE_LZMA_COMPRESSION=1

# 设备配置 - 重要：不要使用 FOX_VERSION
export OF_MAINTAINER="YourName"
export FOX_BUILD_TYPE="Beta"
export FOX_MAINTAINER_PATCH_VERSION=1

# 屏幕配置
export OF_SCREEN_H=2400
export OF_SCREEN_W=1080
export OF_STATUS_H=144
export OF_HIDE_NOTCH=1

# 主题和语言
export TW_THEME=portrait_hdpi
export TW_DEFAULT_LANGUAGE=zh_CN
export TW_DEFAULT_TIME_ZONE="Asia/Shanghai"

# 亮度配置
export TW_BRIGHTNESS_PATH=/sys/class/backlight/panel0-backlight/brightness
export TW_MAX_BRIGHTNESS=255
export TW_DEFAULT_BRIGHTNESS=160

# 加密配置
export TW_INCLUDE_CRYPTO=1
export TW_INCLUDE_CRYPTO_FBE=1

# 文件系统支持
export TW_INCLUDE_NTFS_3G=1
export TW_INCLUDE_FUSE_EXFAT=1

# 触摸屏支持
export OF_SUPPORT_TOUCH_FIRMWARE=1

# 设备信息
export FOX_DEVICE_MODEL="V1936A"
export FOX_DEVICE_BRAND="vivo"
export FOX_DEVICE_NAME="PD1936"

# 其他配置
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1

echo "[OrangeFox] PD1936 基础配置完成"
