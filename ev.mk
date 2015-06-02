#
# Copyright (C) 2013 The Evervolv Project
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

# Call this first so apn list is actually copied
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/apns.mk)

# Inherit from device
$(call inherit-product, device/htc/vivow/device.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

# Pull all dictionaries
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/dictionaries/intl.mk)

# Bootanimation
BOOT_ANIMATION_SIZE := wvga

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_vivow
PRODUCT_BRAND := verizon_wwe
PRODUCT_DEVICE := vivow
PRODUCT_MODEL := ADR6350
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vivow BUILD_FINGERPRINT=verizon_wwe/htc_vivow/vivow:2.3.3/GRI40/81006:user/release-keys PRIVATE_BUILD_DESC="2.18.605.4 CL81006 release-keys"

# Set up the product codename & MOTD.
PRODUCT_CODENAME := Conor
PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Droid Incredible 2\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"
