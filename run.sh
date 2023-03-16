#!/bin/sh

docker run --interactive --tty --volume=$(pwd):/home/spotdl/downloads spotdl:latest $1
