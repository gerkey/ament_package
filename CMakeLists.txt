cmake_minimum_required(VERSION 3.5)

add_custom_target(setuptools ALL
  mkdir -p ${CMAKE_INSTALL_PREFIX}/lib/python3.5/site-packages && PYTHONPATH=${CMAKE_INSTALL_PREFIX}/lib/python3.5/site-packages python3 setup.py install --prefix ${CMAKE_INSTALL_PREFIX}
  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})

install(CODE
  "message(\"installing\")")
