# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from klimtltecan device
$(call inherit-product, device/samsung/klimtltecan/device.mk)

PRODUCT_BRAND := samsung

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit more LineageOS stuff.
$(call inherit-product, vendor/cm/config/data_only.mk)

PRODUCT_NAME := lineage_klimtltecan
PRODUCT_DEVICE := klimtltecan

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T705W \
    PRODUCT_NAME=klimtltecan \
    PRODUCT_DEVICE=klimtltecan \
    TARGET_DEVICE=klimtltecan
