FROM ros:melodic-ros-base
RUN apt-get update
#&& apt-get install -y ros-melodic-desktop-full
RUN apt-get install -y  \
      tmux \
      vim \
      strace \
      iproute2 \
      tcpdump \
      htop \
      ros-melodic-rosserial \
      ros-melodic-rqt 

RUN apt-get install -y ros-melodic-rosbridge-suite ros-melodic-rosbridge-server iputils-ping python-pyqtgraph
RUN sed -i "s/split(':'/rsplit(':', 1/" /opt/ros/melodic/lib/python2.7/dist-packages/rosgraph/network.py

RUN apt-get install -y avahi-daemon
ADD ros_entrypoint.sh /
