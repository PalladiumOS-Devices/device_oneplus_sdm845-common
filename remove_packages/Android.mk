LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := CarrierSetup OnePlusGallery OnePlusFileManager ConnMO DCMO Drive FM2 FilesPrebuilt GoogleTTS libqcomfm_jni Maps MyVerizonServices MaestroPrebuilt NfcNci NgaResources obdm_stub OBDM_Permissions PrebuiltGmail qcom.fmradio RecorderPrebuilt ScribePrebuilt Showcase SprintDM SprintHM SoundAmplifierPrebuilt SafetyHubPrebuilt TipsPrebuilt USCCDM VzwOmaTrigger VZWAPNLib WallpapersBReel2020 YouTube YouTubeMusicPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
