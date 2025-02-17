# Use the official ROS Kinetic base image
FROM ros:kinetic-ros-core

# Set environment variables
ENV ROS_DISTRO=kinetic
ENV ROS_WS=/workspace

# Install dependencies and initialize rosdep
RUN apt-get update && \
    apt-get install -y \
    cmake \
    build-essential \
    ros-${ROS_DISTRO}-catkin \
    python-catkin-tools \
    python-rosdep \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $ROS_WS