#!bin/bash
# syntax=docker/dockerfile:1
FROM balenalib/raspberry-pi-debian-python:latest
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "./app.py"]
