#!/bin/sh

docker run --interactive --tty --volume=/home/frank/Music/spotdl:/home/spotdl/downloads spotdl:latest $1
