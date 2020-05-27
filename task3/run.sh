#!/usr/bin/env bash

docker build -f Dockerfile.build -t mydocker:build .
docker run -it --mount type=bind,src="$(pwd)/text",target=/text --restart=always -p 127.0.0.1:5000:5000 mydocker:build
