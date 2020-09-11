#!/bin/bash

set -e

if [ $# -gt 0 ]; then
  ES_URL="$1"
elif [[ -n $ELASTICSEARCH_URL ]]; then
  ES_URL="$ELASTICSEARCH_URL"
elif [[ -n $ES_HOST ]] && [[ -n $ES_PORT ]]; then
  ES_URL="http://$ES_HOST:$ES_PORT"
else
  ES_URL="http://elasticsearch:9200"
fi

until [[ "$(curl -fsSL "$ES_URL/_cat/health?h=status" | sed -r 's/^[[:space:]]+|[[:space:]]+$//g')" =~ ^(yellow|green)$ ]]; do
  # printf '+' >&2
  sleep 1
done

echo "Elasticsearch is up and healthy at "$ES_URL"" >&2
