#!/bin/bash
set -ev
#Deploy to Dockerhub
docker build -t spartha1995/automatedbuilddemo:latest .
docker push pspartha1995/automatedbuilddemo:latest
