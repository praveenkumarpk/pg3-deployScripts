#!/bin/bash
cd ${APP_HOME}/current
docker tag ${APP_TAG}:base ${REPO_URL}:base
docker push ${REPO_URL}:base
