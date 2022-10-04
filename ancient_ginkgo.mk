#
# Copyright (C) 2020 ArrowOS
# Copyright (C) 2020 AncientRoms
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Inherit some common AncientRoms stuff
ANCIENT_OFFICIAL ?= true
ANCIENT_GAPPS ?= true
TARGET_BOOT_ANIMATION_RES := 1080
ANCIENT_GAPPS := true
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Inherit some common Pixel stuff
TARGET_INCLUDE_PIXEL_CHARGER := true
FORCE_NEXUSLAUNCHER := true
PIXEL_STUFF := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true


#Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier
PRODUCT_NAME := ancient_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/raven/raven:13/TP1A.221005.002/9012097:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.221005.002/9012097 release-keys"
