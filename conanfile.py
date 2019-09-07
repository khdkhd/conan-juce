import os
from conans import ConanFile, CMake, tools

JUCE_MODULES = [
    "analytics",
    "audio_basics",
    "audio_devices",
    "audio_formats",
    "audio_plugin_client",
    "audio_processors",
    "audio_utils",
    "blocks_basics",
    "box2d",
    "cryptography",
    "dsp",
    "graphics",
    "gui_basics",
    "gui_extra",
    "opengl",
    "osc",
    "product_unlocking",
    "video",
]

class JuceConan(ConanFile):
    name = "JUCE"
    version = "5.4.4"
    license = "ISC"
    author = "Julien Graziano (julien@graziano.fr)"
    url = "https://github.com/khdkhd/conan-juce"
    # source_url = "https://github.com/WeAreROLI/JUCE.git"
    source_url = "/Users/jux/Documents/Development/KhdKhd/JuCE"

    description = "The JUCE cross-platform C++ framework."
    topics = ("JUCE", "audio", "GUI")
    settings = "os", "compiler", "build_type", "arch"
    generators = "cmake"
    exports = "CMakeLists.txt", "CMakeJuceModules/*", "juce_config.h.in", "juce.h.in"
    options = dict(
        {
            "report_app_usage": [True, False],
            "shared": [True, False],
            "splash_screen": [True, False],
            "use_dark_splash_screen": [True, False]
        },
        **{module: [True, False] for module in JUCE_MODULES}
    )
    default_options = dict(
        {
            "report_app_usage": "False",
            "shared": "False",
            "splash_screen": "True",
            "use_dark_splash_screen": "True"
        },
        **{module: "False" for module in JUCE_MODULES}
    )
    requires = "zlib/1.2.11@conan/stable"

    @property
    def juce_source_dir(self):
        return os.path.join(self.source_folder, "JUCE")

    def source(self):
        self.run("git clone {}".format(self.source_url))
        self.run("cd JUCE && git checkout {}".format(self.version))

    def build(self):
        modules = [module for module in JUCE_MODULES if getattr(self.options, module)]
        modules.extend(["core", "events", "data_structures"])
        cmake = CMake(self)
        cmake.configure(source_folder=self.source_folder, defs={
            "MODULES": ";".join(modules),
            "SHARED": "ON" if self.options.shared else "OFF",
            "JUCE_DISPLAY_SPLASH_SCREEN": "ON" if self.options.splash_screen else "OFF",
            "JUCE_USE_DARK_SPLASH_SCREEN": "ON" if self.options.use_dark_splash_screen else "OFF",
            "JUCE_REPORT_APP_USAGE": "ON" if self.options.report_app_usage else "OFF"
        })
        cmake.build()
        cmake.install()

    def package_info(self):
        self.cpp_info.libs = ["JUCE"]
        if self.settings.os == "Macos":
            frameworks = set()
            frameworks.add("-framework AppKit")
            frameworks.add("-framework Cocoa")
            frameworks.add("-framework CoreFoundation")
            frameworks.add("-framework CoreGraphics")
            frameworks.add("-framework CoreImage")
            frameworks.add("-framework CoreText")
            frameworks.add("-framework IOKit")
            if self.options.audio_basics:
                frameworks.add("-framework Accelerate")
            if self.options.audio_devices:
                frameworks.add("-framework AudioToolbox")
                frameworks.add("-framework CoreAudio")
                frameworks.add("-framework CoreMIDI")
            if self.options.audio_formats:
                frameworks.add("-framework AudioToolbox")
                frameworks.add("-framework CoreAudio")
                frameworks.add("-framework CoreMIDI")
                frameworks.add("-framework QuartzCore")
            if self.options.audio_processors:
                frameworks.add("-framework CoreAudio")
                frameworks.add("-framework CoreMIDI")
                frameworks.add("-framework AudioToolbox")
            if self.options.audio_utils:
                frameworks.add("-framework DiscRecording")
            if self.options.dsp:
                frameworks.add("-framework Accelerate")
            if self.options.graphics:
                frameworks.add("-framework Cocoa")
                frameworks.add("-framework QuartzCore")
            if self.options.gui_basics:
                frameworks.add("-framework Carbon")
                frameworks.add("-framework Cocoa")
                frameworks.add("-framework QuartzCore")
            if self.options.gui_extra:
                frameworks.add("-framework WebKit")
            if self.options.opengl:
                frameworks.add("-framework OpenGL")
            if self.options.video:
                frameworks.add("-framework AVKit")
                frameworks.add("-framework AVFoundation")
                frameworks.add("-framework CoreMedia")
            self.cpp_info.exelinkflags += frameworks
        if self.settings.build_type == "Debug":
            self.cpp_info.defines.append("JUCE_DEBUG")
