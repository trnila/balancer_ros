#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run --rm  \
	--name roscore \
       	--network=host \
	--hostname=balancer.local \
       	-v $DIR:/root \
       	--device /dev/ttyAMA0:/dev/ttyUSB0 \
	-e ROS_IPV6=on \
       	balancer-ros \
       	roslaunch /root/launch.xml --screen

