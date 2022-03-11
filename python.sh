#! /usr/bin/env bash

#ppa
read -r -p "Do you want to add the ppa for proceeding the installation? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]] || [[ "$response" = "" ]]; then
  sudo apt install software-properties-common -y
  sudo add-apt-repository ppa:deadsnakes/ppa -y
  sudo apt update

else

  echo "PPA adding aborted"

fi

#installation
if [[ "$(grep -iR deadsnakes/ppa /etc/apt)" != "" ]]; then
  echo "Checking PPA status"
  sleep 1
  echo "PPA found so installing python 3.10"
  sudo apt-get install python3.10 -y
  echo "Confirming just installed version -> ->"
  python3.10 -V

elif [[ "$(grep -iR deadsnakes/ppa /etc/apt)" = "" ]]; then
  echo "PPA not found so installation will not proceed"

else
  echo "Installation aborted"
fi
