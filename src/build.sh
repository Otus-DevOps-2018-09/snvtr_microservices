#!/bin/bash

docker build -t snvtr/ui:1.0 ./ui
docker build -t snvtr/comment:1.0 ./comment
docker build -t snvtr/post:1.0 ./post-py

