execute_process(COMMAND "/home/user/catkin_testws/src/test1/build/nxt_python/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/user/catkin_testws/src/test1/build/nxt_python/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
