#!/bin/bash

echo ""

echo -e "\nbuild app image\n"
sudo docker build   -t oracle_jdk8 .

echo ""
