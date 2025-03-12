FROM osrf/ros:jazzy-desktop

RUN apt update && apt install -y \
    ros-jazzy-cv-bridge \
    ros-jazzy-image-pipeline \
    python3-full \
    python3-pip \
    python3-opencv \
    nano vim \
    wget \
    git \
    zip unzip \
    && rm -rf /var/lib/apt/lists/*


RUN mkdir -p /robotics1/src

WORKDIR /robotics1

RUN echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc

RUN mkdir tmp
RUN git clone https://github.com/PUTvision/robotics_camera_calibration.git tmp
RUN mv tmp/robotics_camera_calibration src/robotics_camera_calibration
RUN rm -rf tmp

RUN mkdir data
RUN bash src/robotics_camera_calibration/scripts/download_calibration_bag.bash
