#!/bin/bash
#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#
# 基本构建变量
export TARGET_ARCH=arm64
# A/B 分区配置（无冲突，保留）
export OF_AB_DEVICE=0
export OF_VIRTUAL_AB_DEVICE=0
# 工具配置（保留，确保编译工具支持）
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_BASH_SHELL=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_GREP_BINARY=1
# 压缩配置（保留）
export OF_USE_LZMA_COMPRESSION=1
# 设备配置（必须替换为你的信息）
export OF_MAINTAINER="YourName"  # 替换为你的昵称/ID
export FOX_BUILD_TYPE="Beta"
export FOX_MAINTAINER_PATCH_VERSION=1
# 屏幕配置（精简冗余，保留必要项）
export OF_STATUS_H=144
export OF_HIDE_NOTCH=1
# 触摸屏支持（保留，与BoardConfig.mk一致）
export OF_SUPPORT_TOUCH_FIRMWARE=1
export OF_FORCE_PREBUILT_KERNEL=0  # 核心修改：与自动生成内核逻辑一致
# 设备信息（保留，与BoardConfig.mk一致）
export FOX_DEVICE_MODEL="V1936A"
export FOX_DEVICE_BRAND="vivo"
export FOX_DEVICE_NAME="PD1936"
# 其他配置（保留，无冲突）
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
echo "[OrangeFox] PD1936 配置加载完成"
