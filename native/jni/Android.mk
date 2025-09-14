LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := concealjni
LOCAL_CFLAGS    := -fvisibility=hidden -Os -fdata-sections -ffunction-sections -fexceptions -std=gnu++1y
LOCAL_SRC_FILES := CipherHybrid.cpp DecryptHybrid.cpp EncryptHybrid.cpp JavaArrays.cpp JKeyChain.cpp KeyChainFromJava.cpp MacDecoderHybrid.cpp MacEncoderHybrid.cpp OnLoad.cpp PBKDF2Hybrid.cpp
LOCAL_LDLIBS    := -llog
LOCAL_LDFLAGS   += -Wl,--gc-sections -Wl,--exclude-libs,ALL

# Link against concealcpp (static), crypto (static), and libfb (shared)
LOCAL_STATIC_LIBRARIES := concealcpp crypto
LOCAL_SHARED_LIBRARIES := libfb

include $(BUILD_SHARED_LIBRARY)

# # Import the dependent modules
# $(call import-module,../cpp)             # concealcpp
# $(call import-module,third-party/openssl) # crypto
# $(call import-module,first-party/fbjni/native/fb) # libfb


$(call import-module,cpp)                     # resolves to native/cpp/Android.mk
$(call import-module,openssl)                 # resolves to third-party/openssl/Android.mk
$(call import-module,fbjni/native/fb)         # resolves to first-party/fbjni/native/fb/Android.mk
