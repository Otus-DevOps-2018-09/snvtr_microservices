#!/bin/bash

docker-compose -f docker-compose-logging.yml down 
docker-compose -f docker-compose-logging.yml up -d 

