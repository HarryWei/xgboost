#!/bin/bash

# Xiaowei Shang <xs225@njit.edu> (bash) 2018

time python tests/benchmark/benchmark.py &> /home/xs225/workshop/xgboost/tmp/benchmark

#run xgboost demos(https://github.com/xiaoweishang/xgboost/tree/master/demo)
#1, binary classification, https://github.com/xiaoweishang/xgboost/tree/master/demo/binary_classification
cd /home/xs225/workshop/xgboost/demo/binary_classification
time ../../xgboost mushroom.conf model_in=0002.model num_round=1000 model_out=continue.model nthread=1 &> /home/xs225/workshop/xgboost/tmp/binary_classification1
time ../../xgboost mushroom.conf model_in=0002.model num_round=1000 model_out=continue.model nthread=10 &> /home/xs225/workshop/xgboost/tmp/binary_classification10

#2, multiple classification
cd ~/workshop/xgboost/demo/multiclass_classification
time ./train1.py &> /home/xs225/workshop/xgboost/tmp/multiclass_classification1
time ./train10.py &> /home/xs225/workshop/xgboost/tmp/multiclass_classification10

#3, regression
cd ~/workshop/xgboost/demo/regression
time ./runexp1.sh &> /home/xs225/workshop/xgboost/tmp/regression1
time ./runexp10.sh &> /home/xs225/workshop/xgboost/tmp/regression10

#4, Demonstrating how to use XGBoost on Year Prediction task of Million Song Dataset
#cd ~/workshop/xgboost/demo/yearpredMSD
#time ./runexp1.sh &> /home/xs225/workshop/xgboost/tmp/yearpredMSD1
#time ./runexp10.sh &> /home/xs225/workshop/xgboost/tmp/yearpredMSD10



