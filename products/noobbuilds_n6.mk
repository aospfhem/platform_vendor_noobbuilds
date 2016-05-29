# Nobbuilds shamu make file

# Inlude noobbuilds phone make file
include vendor/noobbuilds/configs/noob_phone.mk

# Inherit AOSP device configuration for shamu
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)


# Override AOSP build properties
PRODUCT_NAME := noobbuilds_n6
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola



