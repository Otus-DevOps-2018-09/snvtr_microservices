#!/bin/bash

docker-compose -f docker-compose-logging.yml stop fluentd
docker-compose -f docker-compose-logging.yml rm   fluentd

cd ../logging/fluentd/

docker build -t snvtr/fluentd .

cd ../../docker 

docker-compose -f docker-compose-logging.yml up -d fluentd
