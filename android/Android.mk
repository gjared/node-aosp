# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Virtually go back up one dir, this file is just a stub so that
# our main dir Android.mk can just call all-subdir-makefiles
LOCAL_PATH      := $(call my-dir)/..

include $(CLEAR_VARS)
include $(LOCAL_PATH)/Android.common.mk

LOCAL_MODULE := node

LOCAL_SHARED_LIBRARIES += \
	libcrypto \
	libssl \
	libz

LOCAL_STATIC_LIBRARIES := \
	node-libv8 \
	node-libuv \
	node-http_parser \
	node-cares

LOCAL_LDFLAGS += \
	-rdynamic \
	-lz \
	-ldl \
	-llog

include $(BUILD_EXECUTABLE)
