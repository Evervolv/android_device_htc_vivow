#
# Copyright (C) 2011 The CyanogenMod Project
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

# device specific props
$(call inherit-product-if-exists, vendor/htc/vivow/vivow-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# gsm config xml file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/voicemail-conf.xml:system/etc/voicemail-conf.xml \

# Input device calibration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    $(LOCAL_PATH)/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc \
    $(LOCAL_PATH)/idc/elan-touchscreen.idc:system/usr/idc/elan-touchscreen.idc \
    $(LOCAL_PATH)/idc/vivow-keypad.idc:system/usr/idc/vivow-keypad.idc

# Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm \
    $(LOCAL_PATH)/keychars/cy8c-touchscreen.kcm:system/usr/keychars/cy8c-touchscreen.kcm \
    $(LOCAL_PATH)/keychars/elan-touchscreen.kcm:system/usr/keychars/elan-touchscreen.kcm

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    $(LOCAL_PATH)/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/keylayout/vivow-keypad.kl:system/usr/keylayout/vivow-keypad.kl \
    $(LOCAL_PATH)/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    $(LOCAL_PATH)/keylayout/cy8c-touchscreen.kl:system/usr/keylayout/cy8c-touchscreen.kl \
    $(LOCAL_PATH)/keylayout/elan-touchscreen.kl:system/usr/keylayout/elan-touchscreen.kl

# Device specific firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    $(LOCAL_PATH)/firmware/default.acdb:system/etc/firmware/default.acdb \
    $(LOCAL_PATH)/firmware/default_mfg.acdb:system/etc/firmware/default_mfg.acdb \
    $(LOCAL_PATH)/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    $(LOCAL_PATH)/firmware/default_org_nel.acdb:system/etc/firmware/default_org_nel.acdb

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dsp/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    $(LOCAL_PATH)/dsp/AdieHWCodec_NEL.csv:system/etc/AdieHWCodec_NEL.csv \
    $(LOCAL_PATH)/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    $(LOCAL_PATH)/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    $(LOCAL_PATH)/dsp/AIC3254_REG_DualMic_NEL.csv:system/etc/AIC3254_REG_DualMic_NEL.csv \
    $(LOCAL_PATH)/dsp/AIC3254_REG_DualMicXB.csv:system/etc/AIC3254_REG_DualMicXB.csv \
    $(LOCAL_PATH)/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    $(LOCAL_PATH)/dsp/TPA2051_CFG_NEL.csv:system/etc/TPA2051_CFG_NEL.csv \
    $(LOCAL_PATH)/dsp/CodecDSPID_BCLK.txt:system/etc/CodecDSPID_BCLK.txt \
    $(LOCAL_PATH)/dsp/CodecDSPID_NEL.txt:system/etc/CodecDSPID_NEL.txt \
    $(LOCAL_PATH)/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    $(LOCAL_PATH)/dsp/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Original_BCLK.txt:system/etc/soundimage/Sound_Original_BCLK.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Original_Recording_BCLK.txt:system/etc/soundimage/Sound_Original_Recording_BCLK.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Original_SPK_BCLK.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Phone_Original_HP_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Phone_Original_REC_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Phone_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    $(LOCAL_PATH)/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    $(LOCAL_PATH)/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# Prop additions
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.oem.ecclist=112,911 \
    ro.ril.enable.a52=0 \
    ro.ril.enable.a53=1 \
    ro.ril.def.agps.mode=6 \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.clientidbase.yt=android-htc \
    ro.com.google.clientidbase.am=android-verizon \
    ro.com.google.clientidbase.vs=android-verizon \
    ro.com.google.clientidbase.gmm=android-verizon \
    ro.com.google.clientidbase.ms=android-verizon \
    ro.cdma.home.operator.numeric = 310012 \
    ro.cdma.home.operator.alpha = Verizon \
    persist.telephony.support_ipv6=true \
    persist.telephony.support_ipv4=true \
    ro.telephony.ril.v3=skipdatareg,skipbrokendatacall \
    ro.vold.umsdirtyratio=20 \
    htc.audio.alt.enable=1 \
    htc.audio.hac.enable=1 \
    media.a1026.nsForVoiceRec=0 \
    media.a1026.enableA1026=0

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc \

# Softkey Rotation Script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rotate_lights.sh:/system/etc/rotate_lights.sh

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)
