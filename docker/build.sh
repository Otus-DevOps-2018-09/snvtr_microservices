#!/bin/bash

#docker build -t snvtr/ui:1.0 ../src/ui
#docker build -t snvtr/comment:1.0 ../src/comment
#docker build -t snvtr/post:1.0 ../src/post-py

for i in ui post-py comment ;
do
    cd ../src/$i
    ./docker_build.sh
    cd ../docker/
done

cd ../monitoring/
./docker_build.sh
cd ../docker/
