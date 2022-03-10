#! /usr/bin/bash

if [[ "$(grep -iR deadsnakes/ppa /etc/apt)" = "" ]]; then
  echo "Installing python 3.10"
  sleep 1
  sudo apt install software-properties-common -y
  sudo add-apt-repository ppa:deadsnakes/ppa -y
  sudo apt update
  sudo apt-get install python3.10 -y
  python3.10 -V
else
  echo "Already Installed"
fi

