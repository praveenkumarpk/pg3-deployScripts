#!/bin/bash
if [ ! -d $APP_HOME ]
then 
app_dir=${APP_HOME}/current
shares_dir=${APP_HOME}/shares
mkdir -p $app_dir && mkdir -p $shares_dir
fi
cd $app_dir && git clone $GIT_REPO .


