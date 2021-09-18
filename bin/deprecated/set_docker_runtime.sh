#!/usr/bin/env bash
#
# Set $DOCKER_RUNTIME environment variable based on available container runtimes.
# ########### NOW DEPRECATED #################

#if [ "$(docker info | grep Runtimes | grep -o nvidia)" == "nvidia" ]; then
#  export DOCKER_RUNTIME="nvidia"
#else
#  export DOCKER_RUNTIME="runc"
#fi
# ########### NOW DEPRECATED #################



# Now Replaced by this
# https://github.com/NVIDIA/nvidia-container-runtime
