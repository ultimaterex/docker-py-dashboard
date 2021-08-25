#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
pip install -r requirements.txt
