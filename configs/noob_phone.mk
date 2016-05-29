# noobbuilds phone make file

# Include common make file
include vendor/noobbuilds/configs/common.mk

# Phone packages
PRODUCT_PACKAGES += \
    Stk \
    CellBroadcastReceiver
    
# Phone build prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0   
