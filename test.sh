#!/bin/bash

# Xiaowei Shang <xs225@njit.edu> (bash) 2018

time python tests/benchmark/benchmark.py &> /home/xs225/workshop/xgboost/tmp/benchmark

#run xgboost demos(https://github.com/xiaoweishang/xgboost/tree/master/demo)
#1, binary classification, https://github.com/xiaoweishang/xgboost/tree/master/demo/binary_classification

cd /home/xs225/workshop/xgboost/demo/binary_classification
time ../../xgboost mushroom.conf model_in=0002.model num_round=1000 model_out=continue.model nthread=1 &> /home/xs225/workshop/xgboost/tmp/binary_classification1
time ../../xgboost mushroom.conf model_in=0002.model num_round=1000 model_out=continue.model nthread=10 &> /home/xs225/workshop/xgboost/tmp/binary_classification10

cd ~/workshop/xgboost/demo/multiclass_classification
time ./train1.py &> /home/xs225/workshop/xgboost/tmp/multiclass_classification1
time ./train10.py &> /home/xs225/workshop/xgboost/tmp/multiclass_classification10



