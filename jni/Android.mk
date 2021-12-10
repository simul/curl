LOCAL_PATH := $(call my-dir)

#--------------------------------------------------------
# curl.a
#
# AVStream
#--------------------------------------------------------
LOCAL_PATH:= $(call my-dir)/..

common_CFLAGS := -Wpointer-arith -Wwrite-strings -Wunused -Winline -Wnested-externs -Wmissing-declarations -Wmissing-prototypes -Wno-long-long -Wfloat-equal -Wno-multichar -Wsign-compare -Wno-format-nonliteral -Wendif-labels -Wstrict-prototypes -Wdeclaration-after-statement -Wno-system-headers -DHAVE_CONFIG_H

include $(CLEAR_VARS)				# clean everything up to prepare for a module
include $(LOCAL_PATH)/lib/Makefile.inc
 # generate libcurl.a
LOCAL_MODULE:= libcurl
LOCAL_MODULE_TAGS := optional

include $(LOCAL_PATH)/../../../client/cflags.mk

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_SRC_FILES := $(CSOURCES)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/
LOCAL_CFLAGS += $(common_CFLAGS)

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)



include $(BUILD_STATIC_LIBRARY)		# start building based on everything since CLEAR_VARS

