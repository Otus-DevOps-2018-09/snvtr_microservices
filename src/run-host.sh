#!/bin/bash

docker run -d --network=host mongo:latest
docker run -d --network=host snvtr/post:1.0
docker run -d --network=host snvtr/comment:1.0
docker run -d --network=host snvtr/ui:1.0
