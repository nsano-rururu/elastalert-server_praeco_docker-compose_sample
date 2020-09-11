#!/bin/bash

set -e

echo "Giving Elasticsearch at $ELASTICSEARCH_URL time to start..."

elastic_search_status.sh

echo "Starting ElastAlert!"
npm start
