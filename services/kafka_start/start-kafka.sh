#!/bin/bash

cd "$(dirname "$0")"

docker service create --name kafka \
--network default_network \
--replicas 1 \
--env-file environment \
bitnami/kafka:latest