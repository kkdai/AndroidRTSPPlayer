LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)
LOCAL_MODULE := ffmpeg-prebuilt
LOCAL_SRC_FILES := ffmpeg/armv7/libffmpeg.so
LOCAL_EXPORT_C_INCLUDES := ffmpeg/armv7/include
LOCAL_EXPORT_LDLIBS := ffmpeg/armv7/libffmpeg.so
LOCAL_PRELINK_MODULE := true
include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := ffmpeg-jni
LOCAL_SRC_FILES := ffmpeg-jni.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)/ffmpeg/armv7/include
LOCAL_LDLIBS := -lm -llog $(LOCAL_PATH)/ffmpeg/armv7/libffmpeg.so
#LOCAL_SHARED_LIBRARY := ffmpeg-prebuilt
include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_EXECUTABLE)