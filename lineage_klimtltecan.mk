#
# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from klimtltecan device
$(call inherit-product, device/samsung/klimtltecan/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := klimtltecan
PRODUCT_NAME := lineage_klimtltecan
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T705W
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=klimtltecan \
    PRIVATE_BUILD_DESC="klimtltevl-user 5.0.2 LRX22G T705WVLU2BOH1 release-keys"

BUILD_FINGERPRINT := samsung/klimtltevl/klimtltecan:5.0.2/LRX22G/T705WVLU2BOH1:user/release-keys
