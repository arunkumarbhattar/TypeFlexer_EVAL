# genchk.cmake.in
# Generate .chk from .out with awk (generic), based upon the automake logic.

# Copyright (C) 2016 Glenn Randers-Pehrson
# Written by Roger Leigh, 2016

# This code is released under the libpng license.
# For conditions of distribution and use, see the disclaimer
# and license in png.h

# Variables substituted from CMakeLists.txt
set(SRCDIR "/home/arun/Desktop/TypeFlexer_EVAL/checkcbox-libpng")
set(BINDIR "/home/arun/Desktop/TypeFlexer_EVAL/checkcbox-libpng/cmake-build-debug")

set(AWK "/usr/bin/awk")

get_filename_component(INPUTEXT "${INPUT}" EXT)
get_filename_component(OUTPUTEXT "${OUTPUT}" EXT)
get_filename_component(INPUTBASE "${INPUT}" NAME_WE)
get_filename_component(OUTPUTBASE "${OUTPUT}" NAME_WE)
get_filename_component(INPUTDIR "${INPUT}" PATH)
get_filename_component(OUTPUTDIR "${OUTPUT}" PATH)

if("${INPUTEXT}" STREQUAL ".out" AND "${OUTPUTEXT}" STREQUAL ".chk")
  # Generate .chk from .out with awk (generic)
  file(REMOVE "${OUTPUT}" "${OUTPUTDIR}/${OUTPUTBASE}.new")
  execute_process(COMMAND "${AWK}" -f "${BINDIR}/scripts/checksym.awk"
                          "${SRCDIR}/scripts/${INPUTBASE}.def"
                          "of=${OUTPUTDIR}/${OUTPUTBASE}.new"
                          "${INPUT}"
                  RESULT_VARIABLE AWK_FAIL)
  if(AWK_FAIL)
    message(FATAL_ERROR "Failed to generate ${OUTPUTDIR}/${OUTPUTBASE}.new")
  endif()
  file(RENAME "${OUTPUTDIR}/${OUTPUTBASE}.new" "${OUTPUT}")
else()
  message(FATAL_ERROR "Unsupported conversion: ${INPUTEXT} to ${OUTPUTEXT}")
endif()
