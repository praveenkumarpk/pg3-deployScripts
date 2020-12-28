#!/bin/bash
cp  $SHARED_HOME/* $APP_HOME/current -rf
cp  $SHARED_HOME/.env $APP_HOME/current
cp  $SHARED_HOME/.env.staging $APP_HOME/current
