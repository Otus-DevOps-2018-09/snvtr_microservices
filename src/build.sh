#!/bin/bash

export USER_NAME=snvtr
export USERNAME=snvtr

docker build -t $USER_NAME/ui:2.1 ./ui
docker build -t $USER_NAME/comment:2.1 ./comment
docker build -t $USER_NAME/post:2.1 ./post-py

docker push $USER_NAME/ui
docker push $USER_NAME/comment
docker push $USER_NAME/post