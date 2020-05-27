#!/usr/bin/env bash

docker build -f Dockerfile.build -t mydocker:build .
docker run --mount type=bind,src="$(pwd)/script",target=/script mydocker:build
