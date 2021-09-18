#!/usr/bin/env bash
#
# Train model
#
# Run "bin/train.sh --help" to see available options.

docker-compose run --rm app python -m src.training.training_session
