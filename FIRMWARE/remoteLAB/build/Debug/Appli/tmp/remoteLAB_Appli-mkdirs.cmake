# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/Projekty_ smietnik/remoteLAB/FIRMWARE/remoteLAB/Appli")
  file(MAKE_DIRECTORY "C:/Projekty_ smietnik/remoteLAB/FIRMWARE/remoteLAB/Appli")
endif()
file(MAKE_DIRECTORY
  "C:/Projekty_ smietnik/remoteLAB/FIRMWARE/remoteLAB/Appli/build"
  "C:/Projekty_ smietnik/remoteLAB/FIRMWARE/remoteLAB/build/Debug/Appli"
  "C:/Projekty_ smietnik/remoteLAB/FIRMWARE/remoteLAB/build/Debug/Appli/tmp"
  "C:/Projekty_ smietnik/remoteLAB/FIRMWARE/remoteLAB/build/Debug/Appli/src/remoteLAB_Appli-stamp"
  "C:/Projekty_ smietnik/remoteLAB/FIRMWARE/remoteLAB/build/Debug/Appli/src"
  "C:/Projekty_ smietnik/remoteLAB/FIRMWARE/remoteLAB/build/Debug/Appli/src/remoteLAB_Appli-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Projekty_ smietnik/remoteLAB/FIRMWARE/remoteLAB/build/Debug/Appli/src/remoteLAB_Appli-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Projekty_ smietnik/remoteLAB/FIRMWARE/remoteLAB/build/Debug/Appli/src/remoteLAB_Appli-stamp${cfgdir}") # cfgdir has leading slash
endif()
