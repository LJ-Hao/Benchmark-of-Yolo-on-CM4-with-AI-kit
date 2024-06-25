#!/bin/bash

mkdir ./yolomodel

# download hef files to ./resources

# H8 HEFs
# wget https://hailo-model-zoo.s3.eu-west-2.amazonaws.com/ModelZoo/Compiled/v2.10.0/hailo8/yolov5n_seg.hef -P ./resources
# wget https://hailo-tappas.s3.eu-west-2.amazonaws.com/v3.26/general/hefs/yolov5m_wo_spp_60p.hef -P ./resources
# wget https://hailo-tappas.s3.eu-west-2.amazonaws.com/v3.26/general/hefs/centerpose_regnetx_1.6gf_fpn.hef -P ./resources

# H8L HEFs
wget https://hailo-csdata.s3.eu-west-2.amazonaws.com/resources/hefs/h8l_rpi/yolov5n_seg_h8l_mz.hef -P ./yolomodel
wget https://hailo-csdata.s3.eu-west-2.amazonaws.com/resources/hefs/h8l_rpi/yolov8s_pose_h8l_pi.hef -P ./yolomodel
wget https://hailo-csdata.s3.eu-west-2.amazonaws.com/resources/hefs/h8l_rpi/yolox_s_leaky_h8l_mz.hef -P ./yolomodel
wget https://hailo-csdata.s3.eu-west-2.amazonaws.com/resources/hefs/h8l_rpi/yolov6n.hef -P ./yolomodel
wget https://hailo-csdata.s3.eu-west-2.amazonaws.com/resources/hefs/h8l_rpi/yolov8s_h8l.hef -P ./yolomodel

# download video file to ./resources
wget https://hailo-csdata.s3.eu-west-2.amazonaws.com/resources/video/detection0.mp4 -P ./yolomodel

source ./setup_env.sh

pip install setproctitle
pip install opencv-python

python3 detection.py --input ../../video/detection0.mp4