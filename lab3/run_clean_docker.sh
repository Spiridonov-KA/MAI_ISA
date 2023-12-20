#!/bin/bash

cd docker 

if [[ "$1" == "-cl" ]]; then
    docker container prune
    docker volume prune
    shift
fi

if [[ "$1" == "-bl" ]]; then
    docker-compose up --build
else
    docker-compose up
fi