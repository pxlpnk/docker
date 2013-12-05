#!/bin/bash

docker run -d -name redis01 redis

docker run -d -link redis01:db -name worker01 worker
docker run -p 80:5100 -d -link redis01:db -name app01 webapp

# docker run -d -link redis01:db -name worker02 worker
