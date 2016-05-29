# Brand
PRODUCT_NAME := noobbuilds
PRODUCT_BRAND := noobbuilds
PRODUCT_DEVICE := generic

# Local path for prebuilts
LOCAL_PATH:= vendor/noobbuilds/prebuilts

# Common build prop overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    drm.service.enabled=true \
    ro.build.selinux=1 \
    ro.adb.secure=1
     
# Common overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/noobbuilds/overlays/common

# Needed Packages
PRODUCT_PACKAGES += \
    Launcher3 

# Enable sip+voip on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Add finerprints
-inlude vendor/noobbuilda/configs/noob_fingerprints.mk