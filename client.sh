#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run -it --rm  \
       	--network=host \
	--hostname=ntb.local \
	-e ROS_MASTER_URI=http://balancer.local:11311 \
       	-v $DIR:/root \
       	balancer-ros \
	bash

