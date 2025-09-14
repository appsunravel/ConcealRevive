# native/jni/Application.mk

# Use modern shared C++ STL (required since NDK r23+)
APP_STL := c++_shared

# Enable C++14 (gnu++1y is the old alias)
APP_CPPFLAGS := -std=gnu++1y

# Minimum supported Android version
APP_PLATFORM := android-21

# Target ABIs
APP_ABI := armeabi-v7a arm64-v8a x86 x86_64
