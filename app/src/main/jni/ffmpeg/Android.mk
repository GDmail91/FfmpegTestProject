LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)
LOCAL_MODULE := libavformat
LOCAL_SRC_FILES := headers/ffmpeg-source/lib/libavformat-57.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/headers/ffmpeg-source/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libavcodec
LOCAL_SRC_FILES := headers/ffmpeg-source/lib/libavcodec-57.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/headers/ffmpeg-source/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libswscale
LOCAL_SRC_FILES := headers/ffmpeg-source/lib/libswscale-4.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/headers/ffmpeg-source/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libavutil
LOCAL_SRC_FILES := headers/ffmpeg-source/lib/libavutil-55.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/headers/ffmpeg-source/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libavfilter
LOCAL_SRC_FILES := headers/ffmpeg-source/lib/libavfilter-6.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/headers/ffmpeg-source/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libswresample
LOCAL_SRC_FILES := headers/ffmpeg-source/lib/libswresample-2.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/headers/ffmpeg-source/include
include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := ffmpeg
LOCAL_SRC_FILES := libffmpeg.so

LOCAL_C_INCLUDES := $(LOCAL_PATH)/headers
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

include $(PREBUILT_SHARED_LIBRARY)