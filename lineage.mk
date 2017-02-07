# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit from klimtltecan device
$(call inherit-product, device/samsung/klimtltecan/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit more LineageOS stuff.
$(call inherit-product, vendor/cm/config/telephony.mk)

PRODUCT_NAME := lineage_klimtltecan
PRODUCT_DEVICE := klimtltecan
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T705W

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=klimtltevl-user 5.0.2 LRX22G T705WVLU1BOD7 release-keys \
    PRIVATE_BUILD_DESC="samsung/klimtltevl/klimtltecan:5.0.2/LRX22G/T705WVLU1BOD7:user/release-keys" \
    PRODUCT_MODEL=SM-T705W \
    PRODUCT_NAME=klimtltecan \
    PRODUCT_DEVICE=klimtltecan \
    TARGET_DEVICE=klimtltecan
