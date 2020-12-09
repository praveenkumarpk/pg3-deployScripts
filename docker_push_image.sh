#!/bin/bash
cd ${APP_HOME}/current
docker tag ${APP_TAG}:${APP_ENV} ${REPO_URL}:${APP_ENV}
docker push ${REPO_URL}:${APP_ENV}