if(APPLE)
  set(JUCE_MODULE_HEADERS
    "${JUCE_MODULE_PATH}/capture/juce_CameraDevice.h"
    "${JUCE_MODULE_PATH}/native/juce_android_CameraDevice.h"
    "${JUCE_MODULE_PATH}/native/juce_android_Video.h"
    "${JUCE_MODULE_PATH}/native/juce_ios_CameraDevice.h"
    "${JUCE_MODULE_PATH}/native/juce_mac_CameraDevice.h"
    "${JUCE_MODULE_PATH}/native/juce_mac_Video.h"
    "${JUCE_MODULE_PATH}/native/juce_win32_CameraDevice.h"
    "${JUCE_MODULE_PATH}/native/juce_win32_Video.h"
    "${JUCE_MODULE_PATH}/playback/juce_VideoComponent.h"
    "${JUCE_MODULE_PATH}/juce_video.h"
  )
  set(JUCE_MODULE_SOURCES
    "${JUCE_MODULE_PATH}/capture/juce_CameraDevice.cpp"
    "${JUCE_MODULE_PATH}/playback/juce_VideoComponent.cpp"
  )
  set(JUCE_MODULE_DEPENDENCIES
    "-framework AVKit"
    "-framework AVFoundation"
    "-framework CoreMedia"
  )
endif()
