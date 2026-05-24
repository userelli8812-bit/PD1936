#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/vivo/PD1936

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# API
PRODUCT_SHIPPING_API_LEVEL := 29

# Qualcomm
PRODUCT_USE_QCOM_COMMON := true

# Inherit from our custom product configuration
PRODUCT_PACKAGES += \
    libion \
    libfuse

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# QCOM Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.3-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Keystore / Crypto - required for FBE decryption
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0 \
    android.hardware.keymaster@4.0 \
    android.hardware.keymaster@4.1 \
    android.hardware.gatekeeper@1.0 \
    android.hardware.gatekeeper@1.0-impl-qti \
    android.hardware.gatekeeper@1.0-service-qti \
    libQSEEComAPI \
    libqisl \
    libGPreqcancel \
    libGPreqcancel_svc \
    libStDrvInt \
    libsecureui \
    libsecureui_svcsock \
    libspcom \
    libssd \
    libdrmfs \
    libdrmtime \
    libdsutils \
    libidl \
    libjson \
    libmdmdetect \
    libperipheral_client \
    libqmi_cci \
    libqmi_client_qmux \
    libqmi_common_so \
    libqmi_csi \
    libqmi_encdec \
    libqmiservices \
    libqrtr \
    libqsocket \
    libtime_genoff \
    libkeystore-engine-wifi-hidl \
    libkeystore-wifi-hidl \
    vendor.qti.hardware.tui_comm@1.0 \
    vendor.display.config@1.0

# FBE metadata decrypt
PRODUCT_PACKAGES += \
    android.hardware.health@2.0 \
    android.hardware.health@2.0-impl-default \
    android.hardware.boot@1.0 \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

# NOTE: recovery.fstab is copied by the build script to
# recovery/root/system/etc/recovery.fstab (see the ramdisk packaging step).
# Do NOT add a PRODUCT_COPY_FILES rule for recovery.fstab here — it creates
# recovery/root/etc/ early, which conflicts with the rsync step that tries
# to replace root/etc (a symlink to system/etc) during ramdisk creation.
