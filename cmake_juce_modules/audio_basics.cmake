if(APPLE)
  set(JUCE_MODULE_HEADERS
    "${JUCE_MODULE_PATH}/audio_play_head/juce_AudioPlayHead.h"
    "${JUCE_MODULE_PATH}/buffers/juce_AudioChannelSet.h"
    "${JUCE_MODULE_PATH}/buffers/juce_AudioDataConverters.h"
    "${JUCE_MODULE_PATH}/buffers/juce_AudioProcessLoadMeasurer.h"
    "${JUCE_MODULE_PATH}/buffers/juce_AudioSampleBuffer.h"
    "${JUCE_MODULE_PATH}/buffers/juce_FloatVectorOperations.h"
    "${JUCE_MODULE_PATH}/effects/juce_CatmullRomInterpolator.h"
    "${JUCE_MODULE_PATH}/effects/juce_Decibels.h"
    "${JUCE_MODULE_PATH}/effects/juce_IIRFilter.h"
    "${JUCE_MODULE_PATH}/effects/juce_LagrangeInterpolator.h"
    "${JUCE_MODULE_PATH}/effects/juce_LinearSmoothedValue.h"
    "${JUCE_MODULE_PATH}/effects/juce_Reverb.h"
    "${JUCE_MODULE_PATH}/midi/juce_MidiBuffer.h"
    "${JUCE_MODULE_PATH}/midi/juce_MidiFile.h"
    "${JUCE_MODULE_PATH}/midi/juce_MidiKeyboardState.h"
    "${JUCE_MODULE_PATH}/midi/juce_MidiMessage.h"
    "${JUCE_MODULE_PATH}/midi/juce_MidiMessageSequence.h"
    "${JUCE_MODULE_PATH}/midi/juce_MidiRPN.h"
    "${JUCE_MODULE_PATH}/mpe/juce_MPEInstrument.h"
    "${JUCE_MODULE_PATH}/mpe/juce_MPEMessages.h"
    "${JUCE_MODULE_PATH}/mpe/juce_MPENote.h"
    "${JUCE_MODULE_PATH}/mpe/juce_MPESynthesiser.h"
    "${JUCE_MODULE_PATH}/mpe/juce_MPESynthesiserBase.h"
    "${JUCE_MODULE_PATH}/mpe/juce_MPESynthesiserVoice.h"
    "${JUCE_MODULE_PATH}/mpe/juce_MPEUtils.h"
    "${JUCE_MODULE_PATH}/mpe/juce_MPEValue.h"
    "${JUCE_MODULE_PATH}/mpe/juce_MPEZoneLayout.h"
    "${JUCE_MODULE_PATH}/native/juce_mac_CoreAudioLayouts.h"
    "${JUCE_MODULE_PATH}/sources/juce_AudioSource.h"
    "${JUCE_MODULE_PATH}/sources/juce_BufferingAudioSource.h"
    "${JUCE_MODULE_PATH}/sources/juce_ChannelRemappingAudioSource.h"
    "${JUCE_MODULE_PATH}/sources/juce_IIRFilterAudioSource.h"
    "${JUCE_MODULE_PATH}/sources/juce_MemoryAudioSource.h"
    "${JUCE_MODULE_PATH}/sources/juce_MixerAudioSource.h"
    "${JUCE_MODULE_PATH}/sources/juce_PositionableAudioSource.h"
    "${JUCE_MODULE_PATH}/sources/juce_ResamplingAudioSource.h"
    "${JUCE_MODULE_PATH}/sources/juce_ReverbAudioSource.h"
    "${JUCE_MODULE_PATH}/sources/juce_ToneGeneratorAudioSource.h"
    "${JUCE_MODULE_PATH}/synthesisers/juce_Synthesiser.h"
    "${JUCE_MODULE_PATH}/juce_audio_basics.h"
  )
  set(JUCE_MODULE_SOURCES
    "${JUCE_MODULE_PATH}/buffers/juce_AudioChannelSet.cpp"
    "${JUCE_MODULE_PATH}/buffers/juce_AudioDataConverters.cpp"
    "${JUCE_MODULE_PATH}/buffers/juce_AudioProcessLoadMeasurer.cpp"
    "${JUCE_MODULE_PATH}/buffers/juce_FloatVectorOperations.cpp"
    "${JUCE_MODULE_PATH}/effects/juce_CatmullRomInterpolator.cpp"
    "${JUCE_MODULE_PATH}/effects/juce_IIRFilter.cpp"
    "${JUCE_MODULE_PATH}/effects/juce_LagrangeInterpolator.cpp"
    "${JUCE_MODULE_PATH}/midi/juce_MidiBuffer.cpp"
    "${JUCE_MODULE_PATH}/midi/juce_MidiFile.cpp"
    "${JUCE_MODULE_PATH}/midi/juce_MidiKeyboardState.cpp"
    "${JUCE_MODULE_PATH}/midi/juce_MidiMessage.cpp"
    "${JUCE_MODULE_PATH}/midi/juce_MidiMessageSequence.cpp"
    "${JUCE_MODULE_PATH}/midi/juce_MidiRPN.cpp"
    "${JUCE_MODULE_PATH}/mpe/juce_MPEInstrument.cpp"
    "${JUCE_MODULE_PATH}/mpe/juce_MPEMessages.cpp"
    "${JUCE_MODULE_PATH}/mpe/juce_MPENote.cpp"
    "${JUCE_MODULE_PATH}/mpe/juce_MPESynthesiser.cpp"
    "${JUCE_MODULE_PATH}/mpe/juce_MPESynthesiserBase.cpp"
    "${JUCE_MODULE_PATH}/mpe/juce_MPESynthesiserVoice.cpp"
    "${JUCE_MODULE_PATH}/mpe/juce_MPEUtils.cpp"
    "${JUCE_MODULE_PATH}/mpe/juce_MPEValue.cpp"
    "${JUCE_MODULE_PATH}/mpe/juce_MPEZoneLayout.cpp"
    "${JUCE_MODULE_PATH}/sources/juce_BufferingAudioSource.cpp"
    "${JUCE_MODULE_PATH}/sources/juce_ChannelRemappingAudioSource.cpp"
    "${JUCE_MODULE_PATH}/sources/juce_IIRFilterAudioSource.cpp"
    "${JUCE_MODULE_PATH}/sources/juce_MemoryAudioSource.cpp"
    "${JUCE_MODULE_PATH}/sources/juce_MixerAudioSource.cpp"
    "${JUCE_MODULE_PATH}/sources/juce_ResamplingAudioSource.cpp"
    "${JUCE_MODULE_PATH}/sources/juce_ReverbAudioSource.cpp"
    "${JUCE_MODULE_PATH}/sources/juce_ToneGeneratorAudioSource.cpp"
    "${JUCE_MODULE_PATH}/synthesisers/juce_Synthesiser.cpp"
  )
  set(JUCE_MODULE_DEPENDENCIES
    "-framework Accelerate"
  )
endif()
