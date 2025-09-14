LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := concealcpp
LOCAL_CFLAGS    := -fvisibility=hidden -Os -fdata-sections -ffunction-sections -fexceptions -std=gnu++1y
LOCAL_SRC_FILES := Cipher.cpp CryptoConfig.cpp Decrypt.cpp DecryptStream.cpp Encrypt.cpp \
                   EncryptStream.cpp MacConfig.cpp MacDecoder.cpp MacEncoder.cpp PBKDF2.cpp \
                   SliceMethods.cpp TailBuffer.cpp TransformBuffer.cpp WithState.cpp

# Export this folder for headers
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)
# LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include.conceal
# Link against OpenSSL's crypto
LOCAL_STATIC_LIBRARIES += crypto

include $(BUILD_STATIC_LIBRARY)

$(call import-module,openssl)
