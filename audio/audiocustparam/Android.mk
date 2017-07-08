LOCAL_PATH := $(my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES:= \
    device/hs/razar/audio/audiocustparam/inc/libnvram \
    device/hs/razar/audio/audiocustparam/inc/audioflinger/audio

LOCAL_SRC_FILES := \
    AudioCustParam.cpp

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libutils \
    libnvram \
    libcustom_nvram

LOCAL_CFLAGS += -DMTK_AUDIO_HD_REC_SUPPORT
LOCAL_CFLAGS += -DMTK_DUAL_MIC_SUPPORT
LOCAL_CFLAGS += -DMTK_HANDSFREE_DMNR_SUPPORT
LOCAL_CFLAGS += -DMTK_VOIP_ENHANCEMENT_SUPPORT
LOCAL_CFLAGS += -DMTK_WB_SPEECH_SUPPORT
LOCAL_CFLAGS += -DDMNR_COMPLEX_ARCH_SUPPORT
LOCAL_CFLAGS += -DMTK_AUDIO_BLOUD_CUSTOMPARAMETER_V5

LOCAL_MODULE := libaudiocustparam
LOCAL_ARM_MODE := arm

include $(BUILD_SHARED_LIBRARY)
