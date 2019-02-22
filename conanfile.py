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
    version = "5.4.1"
    license = "ISC"
    author = "Julien Graziano (julien@graziano.fr)"
    url = "https://github.com/khdkhd/conan-juce"
    source_url = "https://github.com/WeAreROLI/JUCE.git"
    description = "The JUCE cross-platform C++ framework."
    topics = ("JUCE", "audio", "GUI")
    settings = "os", "compiler", "build_type", "arch"
    generators = "cmake"
    exports = "CMakeLists.txt", "cmake_juce_modules/*", "juce_config.h.in", "juce.h.in"
    options = dict({"shared": [True, False]}, **{module: [True, False] for module in JUCE_MODULES})
    default_options = dict({"shared": "False"}, **{module: "False" for module in JUCE_MODULES})

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
            "SHARED": "ON" if self.options.shared else "OFF"
        })
        cmake.build()
        cmake.install()

    def package_info(self):
        self.cpp_info.libs = ["JUCE"]

