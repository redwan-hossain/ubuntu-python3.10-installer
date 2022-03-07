#!/usr/bin/bash

echo Installing python 3.10; sleep 2

sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt-get install python3.10 -y
python3.10 -V
