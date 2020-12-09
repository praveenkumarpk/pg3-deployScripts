#!/bin/bash
echo "login to ECR"
cd $TMP_DIR
START=$(cat ecr_last_login)
DIFF=""

if [ -f "ecr_last_login" ] 
then
  echo ""
else
    touch ecr_last_login
fi

if [ $START != "" ]
then
  END=$(date +%s)
  DIFF=$(( $END - $START ))
echo "difference $DIFF ---"
fi

# if [ $DIFF -ge 14400] 
  aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin ${REPO_URL}:base
# then
# fi

/usr/local/bin/aws  ecr get-login-password --region us-east-1
echo $(date +%s) > ecr_last_login