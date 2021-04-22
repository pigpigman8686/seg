set(MKLDNN_USE_NATIVE_ARCH ${USE_NATIVE_ARCH})

find_package(MKLDNN QUIET)

if(NOT TARGET caffe2::mkldnn)
  add_library(caffe2::mkldnn INTERFACE IMPORTED)
endif()

set_property(
  TARGET caffe2::mkldnn PROPERTY INTERFACE_INCLUDE_DIRECTORIES
  ${MKLDNN_INCLUDE_DIR})
set_property(
  TARGET caffe2::mkldnn PROPERTY INTERFACE_LINK_LIBRARIES
  ${MKLDNN_LIBRARIES})
