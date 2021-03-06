# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor
$(call inherit-product, vendor/lenovo/A7010a48/A7010a48-vendor.mk)

# Device
$(call inherit-product, device/lenovo/A7010a48/device_A7010a48.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOTANIMATION_HALF_RES := true

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_DEVICE := A7010a48
PRODUCT_NAME := lineage_A7010a48
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo A7010a48
PRODUCT_RELEASE_NAME := A7010a48

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=k5fpr

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Lenovo/k5fpr/A7010a48:6.0/MRA58K/RA7010a48_S232_161227_ROW.12271429:user/release-keys \
    PRIVATE_BUILD_DESC="k5fpr-user 6.0 MRA58K A7010a48_S232_161227_ROW release-keys"
