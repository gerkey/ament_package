cmake_minimum_required(VERSION 3.5)
project(ament_package)

find_package(Python3 REQUIRED)
add_custom_target(setuptools ALL
  mkdir -p ${CMAKE_INSTALL_PREFIX}/lib/python${Python3_VERSION_MAJOR}.${Python3_VERSION_MINOR}/site-packages && PYTHONPATH=${CMAKE_INSTALL_PREFIX}/lib/python${Python3_VERSION_MAJOR}.${Python3_VERSION_MINOR}/site-packages python3 setup.py install --prefix ${CMAKE_INSTALL_PREFIX}
  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})

install(CODE
  "message(\"installing\")")
