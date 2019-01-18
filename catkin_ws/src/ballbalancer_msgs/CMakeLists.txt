cmake_minimum_required(VERSION 2.8.3)
project(ballbalancer_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation)

add_message_files(
  FILES
  Measurement.msg
)

add_service_files(
  FILES
  SetTargetPosition.srv
)


generate_messages(
   DEPENDENCIES
   #   std_msgs
)

catkin_package(
	# INCLUDE_DIRS include
  #  CATKIN_DEPENDS message_runtime
)

