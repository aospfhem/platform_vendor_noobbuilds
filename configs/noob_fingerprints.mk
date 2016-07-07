# nobbuilds fingerprints make file

ifeq ($(TARGET_PRODUCT),noobbuilds_n6p)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:6.0.1/MTC19X/2960136:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 6.0.1 MTC19X 2960136 release-keys"
endif

ifeq ($(TARGET_PRODUCT),noobbuilds_n6)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0.1/MOB30O/2920157:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0.1 MOB30O 2920157 release-keys"
endif

ifeq ($(TARGET_PRODUCT),noobbuilds_n9)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0.1/MOB30P/2960889:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0.1 MOB30P 2960889 release-keys"
endif

       
       
       
        
