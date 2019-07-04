#! /bin/bash -xe
if [ -f sample-log.jsonl ];then
  rm sample-log.jsonl
fi
python3 generate-data.py > sample-log.jsonl