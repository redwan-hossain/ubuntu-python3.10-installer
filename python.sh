#!/usr/bin/bash

echo Installing python 3.10; sleep 2

sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt-get install python3.10 -y
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 2
sudo update-alternatives --config python3
python3 -V
