#!/bin/bash
docker run --rm --user $(id -u):$(id -g) -v $PWD:/mnt rstresume "$1"
