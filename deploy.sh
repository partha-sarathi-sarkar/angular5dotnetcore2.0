#!/bin/bash
set -ev
# Login to Docker Hub and upload images
sudo docker build --no-cache -t dotnetapp .
sudo docker tag dotnetapp:latest spartha1995/automatedbuilddemo:latest
sudo docker push spartha1995/automatedbuilddemo:latest
