LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.light@2.0-service.oneplus_sdm845
LOCAL_MODULE_TAGS  := optional

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_STEM := android.hardware.light@2.0-service

LOCAL_SRC_FILES := \
    service.cpp \
    Light.cpp

LOCAL_REQUIRED_MODULES := \
    android.hardware.light@2.0-service.oneplus_sdm845.rc

LOCAL_SHARED_LIBRARIES := \
    libhardware \
    libhidlbase \
    libhidltransport \
    liblog \
    android.hardware.light@2.0

LOCAL_STATIC_LIBRARIES := \
    libbase \
    libutils

LOCAL_POST_INSTALL_CMD := mkdir -p $(TARGET_OUT_PRODUCT)/vendor_overlay/29/bin/hw
LOCAL_POST_INSTALL_CMD += ; cp $(LOCAL_MODULE_PATH)/$(LOCAL_MODULE_RELATIVE_PATH)/$(LOCAL_MODULE_STEM) $(TARGET_OUT_PRODUCT)/vendor_overlay/29/bin/$(LOCAL_MODULE_RELATIVE_PATH)/$(LOCAL_MODULE_STEM)

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.light@2.0-service.oneplus_sdm845.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/init
LOCAL_MODULE_STEM := android.hardware.light@2.0-service.rc

LOCAL_SRC_FILES := android.hardware.light@2.0-service.oneplus_sdm845.rc

LOCAL_POST_INSTALL_CMD := mkdir -p $(TARGET_OUT_PRODUCT)/vendor_overlay/29/etc/init
LOCAL_POST_INSTALL_CMD += ; cp $(LOCAL_MODULE_PATH)/$(LOCAL_MODULE_STEM) $(TARGET_OUT_PRODUCT)/vendor_overlay/29/etc/init/$(LOCAL_MODULE_STEM)

include $(BUILD_PREBUILT)
