#!/bin/bash

# exit if any subcommand or pipeline returns a non-zero status
set -e

docker build -t sparkdev-base:latest ./base