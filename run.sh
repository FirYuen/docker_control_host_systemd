#!/bin/bash
docker build -t docker_control .
docker run -it --rm --privileged -v /run:/run -v /:/host docker_control