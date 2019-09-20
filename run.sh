#!/bin/bash

if [ -e /home/elasticsearch-head-master/elasticsearch-head.log ];
    then
      echo "Already setup elasticsearch-head,start . . ."
else
    source /etc/profile
    cd /home/elasticsearch-head-master &&
    su elasticsearch -c 'grunt server > /home/elasticsearch-head-master/elasticsearch-head.log &'
fi

sleep 10s

tail -100f /home/elasticsearch-head-master/elasticsearch-head.log
