#!/usr/bin/env bash
#
# Run coverage report

docker-compose run --rm --entrypoint coverage app \
  run -m pytest -o no:warnings "$@" tests/
docker-compose run --rm --entrypoint coverage app \
  report -m
