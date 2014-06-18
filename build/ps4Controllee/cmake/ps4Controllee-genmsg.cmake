# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ps4Controllee: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ips4Controllee:/home/avp/avp-ros/src/ps4Controllee/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ps4Controllee_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ps4Controllee
  "/home/avp/avp-ros/src/ps4Controllee/msg/control_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps4Controllee
)

### Generating Services

### Generating Module File
_generate_module_cpp(ps4Controllee
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps4Controllee
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ps4Controllee_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ps4Controllee_generate_messages ps4Controllee_generate_messages_cpp)

# target for backward compatibility
add_custom_target(ps4Controllee_gencpp)
add_dependencies(ps4Controllee_gencpp ps4Controllee_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps4Controllee_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ps4Controllee
  "/home/avp/avp-ros/src/ps4Controllee/msg/control_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps4Controllee
)

### Generating Services

### Generating Module File
_generate_module_lisp(ps4Controllee
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps4Controllee
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ps4Controllee_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ps4Controllee_generate_messages ps4Controllee_generate_messages_lisp)

# target for backward compatibility
add_custom_target(ps4Controllee_genlisp)
add_dependencies(ps4Controllee_genlisp ps4Controllee_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps4Controllee_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ps4Controllee
  "/home/avp/avp-ros/src/ps4Controllee/msg/control_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps4Controllee
)

### Generating Services

### Generating Module File
_generate_module_py(ps4Controllee
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps4Controllee
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ps4Controllee_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ps4Controllee_generate_messages ps4Controllee_generate_messages_py)

# target for backward compatibility
add_custom_target(ps4Controllee_genpy)
add_dependencies(ps4Controllee_genpy ps4Controllee_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps4Controllee_generate_messages_py)


debug_message(2 "ps4Controllee: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps4Controllee)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps4Controllee
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(ps4Controllee_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps4Controllee)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps4Controllee
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(ps4Controllee_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps4Controllee)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps4Controllee\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps4Controllee
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(ps4Controllee_generate_messages_py std_msgs_generate_messages_py)
