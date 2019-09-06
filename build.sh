#!/bin/bash

dotnet build angular5dotnetcore2.0/dotnetcoreplusangular5Template/dotnetcoreplusangular5Template.csproj

dotnet msbuild angular5dotnetcore2.0/dotnetcoreplusangular5Template/dotnetcoreplusangular5Template.csproj -t:Publish -p:Configuration=Release

