#! /bin/bash -xe
url=${1:-http://localhost:4571}
curl -H "Content-Type: application/json" $url/_ingest/pipeline/_simulate?pretty -d @simulate.json