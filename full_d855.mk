#
# Copyright 2014 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from d855 device
$(call inherit-product, device/lge/d855/device.mk)

# Inherit from b2g
$(call inherit-product-if-exists, vendor/cm/config/common_full.mk)

GAIA_DEV_PIXELS_PER_PX := 2.25
BOOTANIMATION_ASSET_SIZE := 1080p

TARGET_DEVICE_BLOBS_LIST := true
TARGET_DEVICE_BLOBS_SRC_DIR := vendor/lge/d855/proprietary
TARGET_DEVICE_BLOBS := \
    device/lge/d855/proprietary-files.txt \
    device/lge/g3-common/proprietary-files.txt

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := d855
PRODUCT_NAME := full_d855
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG G3 (D855)
PRODUCT_MANUFACTURER := LGE
