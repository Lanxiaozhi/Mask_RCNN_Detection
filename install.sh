#!/usr/bin/env bash

conda create --name mask_rcnn_detection
source activate mask_rcnn_detection
conda install ipython
pip install ninja yacs cython matplotlib
conda install pytorch-nightly -c pytorch
cd ~/github
git clone https://github.com/pytorch/vision.git
cd vision
python setup.py install
cd ~/github
git clone https://github.com/cocodataset/cocoapi.git
cd cocoapi/PythonAPI
python setup.py build_ext install
cd ~/mask_rcnn_detection
python setup.py build develop