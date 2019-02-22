if(APPLE)
  set(JUCE_MODULE_HEADERS
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUBase.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUBaseHelper.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUBuffer.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUCarbonViewBase.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUCarbonViewControl.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUDispatch.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUInputElement.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUInputFormatConverter.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUMIDIBase.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUOutputBase.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUOutputElement.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUPlugInDispatch.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUScopeElement.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUSilentTimeout.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUTimestampGenerator.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUViewLocalizedStringKeys.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAAtomic.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAAtomicStack.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAAudioChannelLayout.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAAUParameter.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAAutoDisposer.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CADebugMacros.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CADebugPrintf.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAException.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAHostTimeBase.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAMath.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAMutex.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CarbonEventHandler.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAReferenceCounted.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAStreamBasicDescription.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAThreadSafeList.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAVectorUnit.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAVectorUnitTypes.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAXException.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/ComponentBase.h"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/MusicDeviceBase.h"
    "${JUCE_MODULE_PATH}/Standalone/juce_StandaloneFilterWindow.h"
    "${JUCE_MODULE_PATH}/Unity/juce_UnityPluginInterface.h"
    "${JUCE_MODULE_PATH}/utility/juce_CarbonVisibility.h"
    "${JUCE_MODULE_PATH}/utility/juce_CheckSettingMacros.h"
    "${JUCE_MODULE_PATH}/utility/juce_FakeMouseMoveGenerator.h"
    "${JUCE_MODULE_PATH}/utility/juce_IncludeModuleHeaders.h"
    "${JUCE_MODULE_PATH}/utility/juce_IncludeSystemHeaders.h"
    "${JUCE_MODULE_PATH}/utility/juce_PluginHostType.h"
    "${JUCE_MODULE_PATH}/utility/juce_WindowsHooks.h"
    "${JUCE_MODULE_PATH}/VST/juce_VSTCallbackHandler.h"
    "${JUCE_MODULE_PATH}/juce_audio_plugin_client.h"
  )
  set(JUCE_MODULE_SOURCES
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUBase.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUBuffer.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUCarbonViewBase.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUCarbonViewControl.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUCarbonViewDispatch.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUDispatch.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUInputElement.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUMIDIBase.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUOutputBase.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUOutputElement.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUPlugInDispatch.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/AUScopeElement.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAAudioChannelLayout.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAAUParameter.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAMutex.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CarbonEventHandler.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAStreamBasicDescription.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/CAVectorUnit.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/ComponentBase.cpp"
    "${JUCE_MODULE_PATH}/AU/CoreAudioUtilityClasses/MusicDeviceBase.cpp"
    "${JUCE_MODULE_PATH}/Standalone/juce_StandaloneFilterApp.cpp"
    "${JUCE_MODULE_PATH}/utility/juce_PluginUtilities.cpp"
    "${JUCE_MODULE_PATH}/VST/juce_VST_Wrapper.cpp"
    "${JUCE_MODULE_PATH}/VST/juce_VST_Wrapper.mm"
    "${JUCE_MODULE_PATH}/juce_audio_plugin_client_utils.cpp"
    "${JUCE_MODULE_PATH}/juce_audio_plugin_client_VST_utils.mm"
  )
  set(JUCE_MODULE_DEPENDENCIES)
endif()
