# Use the official ROS Kinetic base image
FROM ros:kinetic-ros-core

# Set environment variables
ENV ROS_DISTRO=kinetic
ENV ROS_WS=/workspace

# Install dependencies and initialize rosdep
RUN apt-get update && \
    apt-get install -y \
    cmake \
    openssh-client \ 
    git \ 
    python3-pip \ 
    build-essential \
    ros-${ROS_DISTRO}-catkin \
    python-catkin-tools \
    python-rosdep \
    ros-kinetic-robot-state-publisher \
    ros-kinetic-moveit \
    ros-kinetic-rosbridge-suite \ 
    ros-kinetic-joy \
    ros-kinetic-ros-control \ 
    ros-kinetic-ros-controllers  \
    ros-kinetic-tf2-web-republisher \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install jsonpickle==1.2

WORKDIR $ROS_WS