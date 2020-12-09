#!/bin/bash
source ./vars.sh

cd $TMP_DIR
sudo chmod +x * -R
# ssh-keyscan -H github.com >> ~/.ssh/known_hosts
echo $GIT_REPO
for exe_mod in "${MOD_EXEC[@]}"
do
  echo "runninng module $exe_mod"
  ./${exe_mod}.sh
done

filename='.modules.ini'
n=1
while read file; do
    n=$((n+1))
    pwd
    ./${file}.sh
done < $filename
