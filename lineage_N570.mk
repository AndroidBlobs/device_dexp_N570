# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from N570 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := dexp
PRODUCT_DEVICE := N570
PRODUCT_MANUFACTURER := dexp
PRODUCT_NAME := lineage_N570
PRODUCT_MODEL := N570

PRODUCT_GMS_CLIENTID_BASE := android-dexp
TARGET_VENDOR := dexp
TARGET_VENDOR_PRODUCT_NAME := N570
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="s7182e_2g-user 8.1.0 OPM2.171019.012 22418 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := DEXP/N570/N570:8.1.0/OPM2.171019.012/22418:user/release-keys
