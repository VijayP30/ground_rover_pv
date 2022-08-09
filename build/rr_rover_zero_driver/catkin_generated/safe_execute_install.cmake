execute_process(COMMAND "/home/ubuntu/Catkin_ws/build/rr_rover_zero_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ubuntu/Catkin_ws/build/rr_rover_zero_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
