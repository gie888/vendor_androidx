# Inherit common product files.
$(call inherit-product, vendor/androidx/config/common_full_phone.mk)
$(call inherit-product, vendor/androidx/config/gsm.mk)

# Inherit AOSP device configuration for bullhead.
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_NAME := androidx_bullhead
PRODUCT_DEVICE := bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT=google/bullhead/bullhead:7.1.1/NMF26F/3425388:user/release-keys \
    PRIVATE_BUILD_DESC="bullhead-user 7.1.1 NMF26F 3425388 release-keys"
