#! /bin/bash -xe
host=${1:-localhost}
port=${2:-4571}

#curator_cli --dry-run --host $host --port $port delete_indices --filter_list '{"filtertype":"none"}'
#curator_cli --dry-run --host $host --port $port delete_indices --filter_list '{"filtertype":"age","source":"creation_date","direction":"older","unit":"days","unit_count":7}'
curator_cli --dry-run --host $host --port $port delete_indices --filter_list '{"filtertype":"age","source":"name","direction":"older","timestring":"%Y%m%d","unit":"days","unit_count":7}'