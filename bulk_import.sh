#!/bin/bash
shopt -s nullglob
for evtlog in $(find /logstash/eventlogs/ -name  "*.evtx"); do
  python3 /home/elk_user/evtxtoelk/evtxtoelk.py $evtlog 127.0.0.1:9200
  echo "Adding $evtlog to ES"
done
