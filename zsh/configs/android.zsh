 _android_arch=$1

if [ -z "${_android_arch}" ]; then
    _android_arch=armv7a-eabi
fi

# Minimum Android platform based on:
#
# http://gs.statcounter.com/os-version-market-share/android/mobile-tablet/worldwide
if [ -z "${ANDROID_MINIMUM_PLATFORM}" ]; then
    export ANDROID_MINIMUM_PLATFORM=24
fi

if [ -z "${ANDROID_HOME}" ]; then
    export ANDROID_HOME=/opt/android-sdk
fi

if [ -z "${ANDROID_NDK_HOME}" ]; then
    export ANDROID_NDK_HOME=/opt/android-ndk
fi

get_last() {
    ls $1 | sort -V | tail -n 1
}

if [ -z "${ANDROID_BUILD_TOOLS_REVISION}" ]; then
    export ANDROID_BUILD_TOOLS_REVISION=$(get_last ${ANDROID_HOME}/build-tools)
fi

if [ -z "${ANDROID_API_VERSION}" ]; then
    export ANDROID_API_VERSION=android-$ANDROID_MINIMUM_PLATFORM
fi

if [ -z "${ANDROID_NDK_PLATFORM}" ]; then
    export ANDROID_NDK_PLATFORM=android-$ANDROID_MINIMUM_PLATFORM
fi

export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools
