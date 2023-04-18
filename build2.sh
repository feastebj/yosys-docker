#!/bin/sh
sudo docker pull benipoo/yosys:latest
sudo docker run --name yosys -it --rm -v /home/ben/Documents/docker-stuff:/yosys/docker-stuff \benipoo/yosys:latest
