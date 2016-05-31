# Include stock M bootanimation.

ifeq (noobbuilds_n6,$(TARGET_PRODUCT))
PRODUCT_COPY_FILES += \
    vendor/noobbuilds/prebuilts/media/shamu.zip:system/media/bootanimation.zip
endif

ifeq (noobbuilds_n6p,$(TARGET_PRODUCT))
PRODUCT_COPY_FILES += \
    vendor/noobbuilds/prebuilts/media/angler.zip:system/media/bootanimation.zip
endif

ifeq (noobbuilds_n9,$(TARGET_PRODUCT))
PRODUCT_COPY_FILES += \
    vendor/noobbuilds/prebuilts/media/flounder.zip:system/media/bootanimation.zip 
endif
