#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
source "/root/catkin_ws/devel/setup.bash"

rm -f /var/run/dbus/system_bus_socket
mkdir -p /var/run/dbus
dbus-daemon --system --fork
avahi-daemon -D

exec "$@"
