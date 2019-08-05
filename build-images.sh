#!/bin/bash

# exit if any subcommand or pipeline returns a non-zero status
set -e

docker build -t sparkdev-base:latest ./base
docker build -t sparkdev-scala:latest ./scala
docker build -t sparkdev-spark:latest ./spark
