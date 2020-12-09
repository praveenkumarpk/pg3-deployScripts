#!/bin/bash
cd ${APP_HOME}/current
docker build -f Dockerfile.${APP_ENV} -t $APP_TAG:${APP_ENV} .