#!/bin/sh
NAME=$(basename $(dirname `pwd`))
docker push overhandtech/$NAME
