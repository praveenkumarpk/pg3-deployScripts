#!/bin/bash
cd ${APP_HOME}/current
docker stack deploy --compose-file docker-compose.${APP_ENV}.yml $STACK_NAME --with-registry-auth