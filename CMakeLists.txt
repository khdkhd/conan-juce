project(JUCE)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

separate_arguments(MODULES)

option(SHARED "Enable/Distable shared library" OFF)

set(JUCE_MODULE_BASE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/JUCE/modules")
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake_juce_modules")

foreach(MODULE ${MODULES})
  set(JUCE_MODULE_AVAILABLE_juce_${MODULE} 1)

  string(TOLOWER ${MODULE} MODULE)

  set(MODULE_NAME "juce_${MODULE}")
  set(JUCE_MODULE_PATH "${JUCE_MODULE_BASE_DIR}/${MODULE_NAME}")

  message(STATUS "JUCE include module: ${MODULE}")

  include(${MODULE})

  if(APPLE AND EXISTS "${JUCE_MODULE_PATH}/${MODULE_NAME}.mm")
    list(APPEND JUCE_MODULE_SOURCES "${JUCE_MODULE_PATH}/${MODULE_NAME}.cpp")
    list(APPEND JUCE_SOURCES ${JUCE_MODULE_SOURCES} "${JUCE_MODULE_PATH}/${MODULE_NAME}.mm")
  else()
    list(APPEND JUCE_SOURCES ${JUCE_MODULE_SOURCES} "${JUCE_MODULE_PATH}/${MODULE_NAME}.cpp")
  endif()

  list(APPEND JUCE_DEPENDENCIES ${JUCE_MODULE_DEPENDENCIES})
  set_source_files_properties(${JUCE_MODULE_SOURCES} PROPERTIES HEADER_FILE_ONLY TRUE)

  install(FILES "${JUCE_MODULE_PATH}/juce_${MODULE}.h" DESTINATION include/juce_${MODULE})
endforeach()

list(SORT JUCE_DEPENDENCIES)
list(REMOVE_DUPLICATES JUCE_DEPENDENCIES)

set(JUCE_APP_CONFIG_HEADER "${CMAKE_CURRENT_BINARY_DIR}/include/juce/config.h")
set(JUCE_HEADER "${CMAKE_CURRENT_BINARY_DIR}/include/juce.h")

configure_file(juce_config.h.in ${JUCE_APP_CONFIG_HEADER})
configure_file(juce.h.in ${JUCE_HEADER})

list(APPEND JUCE_SOURCES
  ${JUCE_APP_CONFIG_HEADER}
  ${JUCE_HEADER}
)

if(SHARED)
  set(LIB_TYPE SHARED)
else()
  set(LIB_TYPE STATIC)
endif()

add_library(${PROJECT_NAME} ${LIB_TYPE} ${JUCE_SOURCES})
target_include_directories(${PROJECT_NAME}
  PUBLIC
    "${JUCE_MODULE_BASE_DIR}"
    "${CMAKE_CURRENT_SOURCE_DIR}/include"
)
target_compile_definitions(${PROJECT_NAME}
  PUBLIC
    JUCE_API=
    JUCE_APP_CONFIG_HEADER="${JUCE_APP_CONFIG_HEADER}"
    NDEBUG
)
target_compile_features(${PROJECT_NAME}
  PUBLIC
    cxx_std_17
)
target_link_libraries(${PROJECT_NAME}
  PUBLIC
    CONAN_PKG::zlib
    ${JUCE_DEPENDENCIES}
)

install(TARGETS ${PROJECT_NAME}
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
  ARCHIVE DESTINATION lib
)

install(DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/include/" DESTINATION include FILES_MATCHING PATTERN "*.h")
install(DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/JUCE/modules/" DESTINATION include FILES_MATCHING PATTERN "*.h")
