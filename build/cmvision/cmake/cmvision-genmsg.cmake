# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cmvision: 2 messages, 0 services")

set(MSG_I_FLAGS "-Icmvision:/home/user/catkin_testws/src/cmvision/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cmvision_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg" NAME_WE)
add_custom_target(_cmvision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cmvision" "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg" "std_msgs/Header:cmvision/Blob"
)

get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blob.msg" NAME_WE)
add_custom_target(_cmvision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cmvision" "/home/user/catkin_testws/src/cmvision/msg/Blob.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cmvision
  "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_testws/src/cmvision/msg/Blob.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmvision
)
_generate_msg_cpp(cmvision
  "/home/user/catkin_testws/src/cmvision/msg/Blob.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmvision
)

### Generating Services

### Generating Module File
_generate_module_cpp(cmvision
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmvision
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cmvision_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cmvision_generate_messages cmvision_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg" NAME_WE)
add_dependencies(cmvision_generate_messages_cpp _cmvision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blob.msg" NAME_WE)
add_dependencies(cmvision_generate_messages_cpp _cmvision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmvision_gencpp)
add_dependencies(cmvision_gencpp cmvision_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmvision_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cmvision
  "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_testws/src/cmvision/msg/Blob.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmvision
)
_generate_msg_eus(cmvision
  "/home/user/catkin_testws/src/cmvision/msg/Blob.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmvision
)

### Generating Services

### Generating Module File
_generate_module_eus(cmvision
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmvision
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cmvision_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cmvision_generate_messages cmvision_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg" NAME_WE)
add_dependencies(cmvision_generate_messages_eus _cmvision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blob.msg" NAME_WE)
add_dependencies(cmvision_generate_messages_eus _cmvision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmvision_geneus)
add_dependencies(cmvision_geneus cmvision_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmvision_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cmvision
  "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_testws/src/cmvision/msg/Blob.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmvision
)
_generate_msg_lisp(cmvision
  "/home/user/catkin_testws/src/cmvision/msg/Blob.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmvision
)

### Generating Services

### Generating Module File
_generate_module_lisp(cmvision
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmvision
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cmvision_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cmvision_generate_messages cmvision_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg" NAME_WE)
add_dependencies(cmvision_generate_messages_lisp _cmvision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blob.msg" NAME_WE)
add_dependencies(cmvision_generate_messages_lisp _cmvision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmvision_genlisp)
add_dependencies(cmvision_genlisp cmvision_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmvision_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cmvision
  "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_testws/src/cmvision/msg/Blob.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmvision
)
_generate_msg_nodejs(cmvision
  "/home/user/catkin_testws/src/cmvision/msg/Blob.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmvision
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cmvision
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmvision
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cmvision_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cmvision_generate_messages cmvision_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg" NAME_WE)
add_dependencies(cmvision_generate_messages_nodejs _cmvision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blob.msg" NAME_WE)
add_dependencies(cmvision_generate_messages_nodejs _cmvision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmvision_gennodejs)
add_dependencies(cmvision_gennodejs cmvision_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmvision_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cmvision
  "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_testws/src/cmvision/msg/Blob.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision
)
_generate_msg_py(cmvision
  "/home/user/catkin_testws/src/cmvision/msg/Blob.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision
)

### Generating Services

### Generating Module File
_generate_module_py(cmvision
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cmvision_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cmvision_generate_messages cmvision_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blobs.msg" NAME_WE)
add_dependencies(cmvision_generate_messages_py _cmvision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_testws/src/cmvision/msg/Blob.msg" NAME_WE)
add_dependencies(cmvision_generate_messages_py _cmvision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmvision_genpy)
add_dependencies(cmvision_genpy cmvision_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmvision_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmvision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmvision
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cmvision_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmvision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmvision
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cmvision_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmvision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmvision
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cmvision_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmvision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmvision
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cmvision_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmvision
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cmvision_generate_messages_py std_msgs_generate_messages_py)
endif()
