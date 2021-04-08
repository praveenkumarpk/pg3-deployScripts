#!/bin/bash
source ./vars.sh

cd $TMP_DIR
sudo chmod +x * -R
# ssh-keyscan -H github.com >> ~/.ssh/known_hosts
#echo $GIT_REPO
#for exe_mod in "${MOD_EXEC[@]}"
#do
#  echo "runninng module $exe_mod"
#  ./${exe_mod}.sh
#done

filename='.modules.ini'
total=$(wc -l .modules.ini | awk '{print $1}')
n=1
while read file; do
    echo $file "<<<<<<<<<<<<<<<<<<........Processing..........>>>>>>>>>>>>>>>>>>>>"  $n "Out of" $total "Steps Completed"
    set -e;
    n=$((n+1))
    pwd
    ./${file}.sh
   if [ $? -eq 0 ]; then
     echo $?
     echo $file $'\e[1;32m Success'
     else
     echo $'\e[1;33;4;44m Failure XXXXXXXXX\e[0m'
   fi
done < $filename
