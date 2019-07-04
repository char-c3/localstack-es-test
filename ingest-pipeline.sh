#! /bin/bash -xe
url=${1:-http://localhost:4571}
curl -H "Content-Type: application/json" -XPUT $url/_ingest/pipeline/alblog?pretty -d @ingest-pipeline.json