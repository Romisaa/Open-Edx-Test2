#!/usr/bin/env bash
set -eu -o pipefail
set -x

docker-compose up -d forum
docker-compose exec -T forum bash -e -c 'source /edx/app/forum/ruby_env && cd /edx/app/forum/cs_comments_service && bundle install --deployment --path /edx/app/forum/.gem/'
