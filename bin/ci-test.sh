#!/usr/bin/env bash
#
# Run tests meant to run in CI

docker-compose -f docker-compose.ci.yml run --rm app python -m pytest src/tests/
