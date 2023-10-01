#!/bin/bash

sudo insmod /home/archivos2s2022/so1_2s2023_201404106/proyecto1/modules/ram_201404106.ko

sudo insmod /home/archivos2s2022/so1_2s2023_201404106/proyecto1/modules/cpu_201404106.ko

sudo docker run -p 4000:4000 backendgo:v1