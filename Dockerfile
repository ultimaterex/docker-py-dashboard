#!bin/bash
# syntax=docker/dockerfile:1
FROM balenalib/raspberry-pi-debian-python:latest
WORKDIR /usr/src/app
RUN apt-get update &&     apt-get install --no-install-recommends       build-essential python3-dev python3-pip       libffi-dev libpython-dev libssl-dev       net-tools nmap       iputils-ping       ssh &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "./app.py"]
