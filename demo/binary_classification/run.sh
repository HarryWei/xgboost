#!/bin/bash

valgrind --tool=callgrind ../../xgboost mushroom.conf nthread=1
valgrind --tool=callgrind ../../xgboost mushroom.conf nthread=16
