#!/usr/bin/env bash
#
# Run prediction model.
#
# Run "bin/predict.sh --help" to see available options.


docker-compose run --rm app \
  python -m src.prediction.prediction_session "$@"
