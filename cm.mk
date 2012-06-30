#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product, device/allwinner/elite/full_elite.mk)
# Inherit some common CM9 stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, device/allwinner/elite/elite-blobs.mk)

TARGET_BOOTANIMATION_NAME := horizontal-1024x600

## Device identifier. This must come after all inclusions
PRODUCT_NAME := CM_Elite
PRODUCT_BRAND := Allwinner
PRODUCT_DEVICE := elite
PRODUCT_MODEL := Elite
PRODUCT_MANUFACTURER := Allwinner
PRODUCT_RELEASE_NAME := Elite

UTC_DATE := $(shell date +%s)
DATE     := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=${PRODUCT_MODEL}_${PRODUCT_SFX} \
    TARGET_DEVICE=elite \
    BUILD_FINGERPRINT=softwinners/Elite/elite_A10:4.0.4/IML76L/20120701:eng/release-keys \
   PRIVATE_BUILD_DESC="Crane_Elite_A10-eng 4.0.4 IML76L 20120701 release-keys" \
    BUILD_NUMBER=${DATE} \
    BUILD_VERSION_TAGS=release-keys \
    TARGET_BUILD_TYPE=eng
