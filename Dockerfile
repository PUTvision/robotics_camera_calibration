FROM osrf/ros:jazzy-desktop

RUN apt update && apt install -y \
    ros-jazzy-cv-bridge \
    ros-jazzy-image-pipeline \
    python3-full \
    python3-pip \
    python3-opencv \
    nano vim \
    wget \
    git


RUN mkdir -p /robotics1/src

WORKDIR /robotics1
