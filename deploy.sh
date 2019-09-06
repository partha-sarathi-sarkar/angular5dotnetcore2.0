#!/bin/bash
set -ev

sudo apt install azure-cli=2.0.25.1
az login -u partha.sarathi.sarkar95@outlook.com -p partha9007976323


# Login to Docker Hub and upload images
docker build --no-cache -t dotnetapp .
docker tag dotnetapp:latest democontainercr.azurecr.io/dotnetapp:v1
az acr login --name democontainercr
docker push democontainercr.azurecr.io/dotnetapp:v1
