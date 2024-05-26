#!/bin/ash
python -m venv venv
. ./venv/bin/activate
python -m ensurepip --upgrade
sudo pip install ansible
