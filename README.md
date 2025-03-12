# Robotics 1 - Camera calibration course

* clone the repository
```
git clone https://github.com/PUTvision/robotics_camera_calibration.git
```

* go to the repository directory
```
cd robotics_camera_calibration
```


* build the container
```
docker build -t ros2_calibration . --no-cache
```

* run the container
```
docker run -it \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \ 
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --privileged \
    --network=host \ 
    --name="ros2calib" \
    ros2_calibration \
    bash
```
