# Inherit common product files.
$(call inherit-product, vendor/androidx/config/common_full_phone.mk)
$(call inherit-product, vendor/androidx/config/gsm.mk)

# Inherit AOSP device configuration for angler.
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_NAME := androidx_angler
PRODUCT_DEVICE := angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RESTRICT_VENDOR_FILES := false

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:7.1.1/NMF26F/3425388:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 7.1.1 NMF26F 3425388 release-keys"
