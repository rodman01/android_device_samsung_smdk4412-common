LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	secril-shim.cpp

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libril \
	libcutils \
	libbinder

LOCAL_CFLAGS := -Wall -Werror

ifeq ($(BOARD_MODEM_TYPE),mdm9x35)
LOCAL_CFLAGS += -DMDM9X35_MODEM
endif

LOCAL_MODULE := libsecril-shim

include $(BUILD_SHARED_LIBRARY)
