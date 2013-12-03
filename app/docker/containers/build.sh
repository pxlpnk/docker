#!/bin/bash

sudo docker build -t base-app - < Dockerfile.base
sudo docker build -t webapp - < Dockerfile.webapp
sudo docker build -t worker - < Dockerfile.worker
sudo docker build -t redis - < Dockerfile.redis
