#!/bin/bash

cd /home/container

java -version

MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo -e "\033[1;33mcontainer@pterodactyl~\033[0m $ ${MODIFIED_STARTUP}"

${MODIFIED_STARTUP}
