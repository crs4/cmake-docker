#!/usr/bin/env bash

set -euo pipefail

v=3.17.2
docker build --build-arg v=${v} -t crs4/cmake:${v} -t crs4/cmake:${v%.*} .
