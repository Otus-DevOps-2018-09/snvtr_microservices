#!/bin/bash

docker run -d --network=back_net --network-alias=post_db --network-alias=comment_db -v reddit_db:/data/db mongo:latest
docker run -d --network=back_net --network-alias=post snvtr/post:1.0
docker run -d --network=back_net --network-alias=comment snvtr/comment:1.0
docker run -d --network=front_net --network-alias=ui -p 9292:9292/tcp snvtr/ui:1.0

