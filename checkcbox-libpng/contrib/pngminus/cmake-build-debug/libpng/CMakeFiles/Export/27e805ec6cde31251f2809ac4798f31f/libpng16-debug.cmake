#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "png" for configuration "Debug"
set_property(TARGET png APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(png PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libpng16d.so.16.39.git"
  IMPORTED_SONAME_DEBUG "libpng16d.so.16"
  )

list(APPEND _cmake_import_check_targets png )
list(APPEND _cmake_import_check_files_for_png "${_IMPORT_PREFIX}/lib/libpng16d.so.16.39.git" )

# Import target "png_static" for configuration "Debug"
set_property(TARGET png_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(png_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libpng16d.a"
  )

list(APPEND _cmake_import_check_targets png_static )
list(APPEND _cmake_import_check_files_for_png_static "${_IMPORT_PREFIX}/lib/libpng16d.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
