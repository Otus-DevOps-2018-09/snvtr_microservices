#!/bin/bash

docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db -v reddit_db:/data/db mongo:latest
docker run -d --network=reddit --network-alias=post snvtr/post:1.0
docker run -d --network=reddit --network-alias=comment snvtr/comment:1.0
docker run -d --network=reddit --network-alias=ui -p 9292:9292/tcp snvtr/ui:1.0

