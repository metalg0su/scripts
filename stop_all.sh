#!/bin/bash
check_ps='ps -ef | grep "python\|guni\|loopchain\|icon" | grep -v "grep"'

eval ${check_ps}

for i in $(seq 3 8); do
 eval ${check_ps} | cut -d " " -f ${i} | xargs kill -9
 eval ${check_ps}
done

# Rabbitmq reset
sudo rabbitmqctl stop_app
sudo rabbitmqctl reset
sudo rabbitmqctl start_app

mq_container_id=`sudo docker ps | grep rabbitmq | cut -d " " -f1`
sudo docker restart ${mq_container_id}
