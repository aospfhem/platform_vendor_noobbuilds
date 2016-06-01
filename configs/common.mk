# Noobbuilds common make file


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
    Launcher3 \
    PrebuiltExchange3Google \
    KernelAdiutor \
    AdAway
    
# Blobs for media effects -- no vendor partition devices
ifneq ($(filter noobbuilds_n6,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    $(LOCAL_PATH)/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
endif    

# Enable sip+voip on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
    
# init.d script support
PRODUCT_COPY_FILES += \
    vendor/noobbuilds/prebuilts/bin/sysinit:system/bin/sysinit \
    vendor/noobbuilds/prebuilts/root/init.noob.rc:root/init.noob.rc
    
# Add noobbuilds sounds
-include vendor/noobbuilds/configs/noob_sounds.mk
    
# Add stock bootanimation 
-include vendor/noobbuilds/configs/bootani.mk

# Add fingerprints
-include vendor/noobbuilds/configs/noob_fingerprints.mk
