#!/bin/sh
NAME=$(basename $(dirname `pwd`))

docker build \
    -t veimis/$NAME \
    -t veimis/$NAME:`date +%Y-%m-%d` \
    -f ./Dockerfile \
    ..
