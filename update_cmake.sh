#!/bin/bash

sudo cd /usr/local
wget https://cmake.org/files/v3.6/cmake-3.6.0-Linux-x86_64.sh
sudo chmod +x cmake-3.6.0-Linux-x86_64.sh
sudo ./cmake-3.6.0-Linux-x86_64.sh
sudo ln -s /usr/local/cmake-3.6.0-Linux-x86_64/bin/* /usr/local/bin/
