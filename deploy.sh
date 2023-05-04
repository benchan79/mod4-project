#!/bin/bash

docker stop mod4-release-app || true
docker rm mod4-release-app || true
docker pull benchan79/mod4-project-docker:latest
docker run -d --name mod4-release-app -p 8080:8080 benchan79/mod4-project-docker:latest
