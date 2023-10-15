# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dinogenerator: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dinogenerator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv" NAME_WE)
add_custom_target(_dinogenerator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dinogenerator" "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(dinogenerator
  "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dinogenerator
)

### Generating Module File
_generate_module_cpp(dinogenerator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dinogenerator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dinogenerator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dinogenerator_generate_messages dinogenerator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv" NAME_WE)
add_dependencies(dinogenerator_generate_messages_cpp _dinogenerator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dinogenerator_gencpp)
add_dependencies(dinogenerator_gencpp dinogenerator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dinogenerator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(dinogenerator
  "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dinogenerator
)

### Generating Module File
_generate_module_eus(dinogenerator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dinogenerator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dinogenerator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dinogenerator_generate_messages dinogenerator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv" NAME_WE)
add_dependencies(dinogenerator_generate_messages_eus _dinogenerator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dinogenerator_geneus)
add_dependencies(dinogenerator_geneus dinogenerator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dinogenerator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(dinogenerator
  "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dinogenerator
)

### Generating Module File
_generate_module_lisp(dinogenerator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dinogenerator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dinogenerator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dinogenerator_generate_messages dinogenerator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv" NAME_WE)
add_dependencies(dinogenerator_generate_messages_lisp _dinogenerator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dinogenerator_genlisp)
add_dependencies(dinogenerator_genlisp dinogenerator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dinogenerator_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(dinogenerator
  "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dinogenerator
)

### Generating Module File
_generate_module_nodejs(dinogenerator
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dinogenerator
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dinogenerator_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dinogenerator_generate_messages dinogenerator_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv" NAME_WE)
add_dependencies(dinogenerator_generate_messages_nodejs _dinogenerator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dinogenerator_gennodejs)
add_dependencies(dinogenerator_gennodejs dinogenerator_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dinogenerator_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(dinogenerator
  "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dinogenerator
)

### Generating Module File
_generate_module_py(dinogenerator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dinogenerator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dinogenerator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dinogenerator_generate_messages dinogenerator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/robotic-systems-control/task1/dinogenerator_ws/src/dinogenerator/srv/GenerateDino.srv" NAME_WE)
add_dependencies(dinogenerator_generate_messages_py _dinogenerator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dinogenerator_genpy)
add_dependencies(dinogenerator_genpy dinogenerator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dinogenerator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dinogenerator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dinogenerator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dinogenerator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dinogenerator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dinogenerator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dinogenerator_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dinogenerator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dinogenerator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dinogenerator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dinogenerator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dinogenerator
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dinogenerator_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dinogenerator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dinogenerator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dinogenerator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dinogenerator_generate_messages_py std_msgs_generate_messages_py)
endif()
