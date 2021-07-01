#!/bin/sh -l

echo "Hello $1"
time=$(date)
ls
lscpu
echo "::set-output name=time::$time"
