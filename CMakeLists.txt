cmake_minimum_required(VERSION 3.5)

add_custom_target(setuptools_build ALL
  python3 setup.py build
  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})

install(CODE
  "execute_process(
    COMMAND env PYTHONPATH=$ENV{PYTHONPATH}:${CMAKE_INSTALL_PREFIX}/lib/python3.7/site-packages/ python3 setup.py install --prefix ${CMAKE_INSTALL_PREFIX}
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})")


