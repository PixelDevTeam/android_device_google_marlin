#
# Copyright 2015 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device specific makefiles
$(call inherit-product, device/google/marlin/device-marlin.mk)
$(call inherit-product, vendor/google/marlin/marlin-vendor.mk)

PRODUCT_NAME := lineage_marlin
PRODUCT_DEVICE := marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
PRODUCT_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

# GMS client ID
PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRIVATE_BUILD_DESC="marlin-user 8.1.0 OPM1.171019.021 4565141 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:8.1.0/OPM1.171019.021/4565141:user/release-key