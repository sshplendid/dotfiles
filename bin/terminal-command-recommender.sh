#!/bin/bash

###################################
# 터미널 커맨드 중 하나를 랜덤으로 추천한다.
###################################

command="$(ls -al /usr/bin | awk '{print $9}' | sort -R | head -n 1)"

MAN='\033[5;42;93m'
CMD='\033[25;42;37m'
RESTORE='\033[m'



echo "##################################"
echo "Do you know '$command'?"
echo "Try and learn about this command!"
echo -e "\$ ${MAN}man ${CMD}${command}${RESTORE}"
echo "##################################"
