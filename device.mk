# Copyright (C) 2020 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, vendor/oneplus/oneplus8t/oneplus8t-vendor.mk)
$(call inherit-product, device/oneplus/oneplus8/device.mk)

# Biometrics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fod.pos.x=438 \
    ro.fod.pos.y=1822 \
    ro.fod.size=204

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/oneplus/oneplus8t

# Overlays
PRODUCT_PACKAGES += \
    OnePlus8TFrameworks

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 30

# Vendor Service Manager
PRODUCT_PACKAGES += \
    vndservicemanager

# Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
