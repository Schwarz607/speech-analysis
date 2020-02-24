#!/bin/sh

BUILD_DIR=/tmp/speech-analysis/linux

mkdir -p $BUILD_DIR

docker pull clorika/linux:latest
docker container run --name extract -v "$(pwd)":/src -v $BUILD_DIR:/build clorika/linux:latest
docker container cp extract:/build/speech_analysis/src/main-build/speech_analysis ./out.Linux
docker container rm -f extract
