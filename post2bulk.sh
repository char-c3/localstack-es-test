#! /bin/bash -xe
url=${1:-http://localhost:4571}
./generate-data.sh
curl -H "Content-Type: application/x-ndjson" -XPOST "$url/_bulk?pretty&pipeline=alblog" --data-binary @sample-log.jsonl