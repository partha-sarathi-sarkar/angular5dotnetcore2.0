#!/bin/bash
set -ev
# Login to Docker Hub and upload images
docker build --no-cache -t dotnetapp .
docker tag dotnetapp:latest spartha1995/automatedbuilddemo:latest
docker push spartha1995/automatedbuilddemo:latest
