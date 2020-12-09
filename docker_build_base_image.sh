#!/bin/bash
echo "running docker_build_base_image -->"
cd ${APP_HOME}/current
docker build -f Dockerfile.base -t $APP_TAG:base .