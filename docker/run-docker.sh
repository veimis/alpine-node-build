#!/bin/sh
NAME=$(basename $(dirname `pwd`))

CONTAINER=`docker ps -a -q --filter="name=$NAME"`
if [ -n "$CONTAINER" ]; then
    docker rm $CONTAINER
fi

CONTAINER=`docker ps -a -q --filter="name=$NAME"`

docker run -it \
    --name $NAME \
    --init \
    coderbunker/$NAME:latest \
    $*
