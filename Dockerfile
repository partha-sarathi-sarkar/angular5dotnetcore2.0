# .NET Core on Apprenda
FROM microsoft/aspnetcore-build:2.0 AS build-env
WORKDIR /app
EXPOSE 80

COPY . .

RUN dotnet build angular5dotnetcore2.0/dotnetcoreplusangular5Template/dotnetcoreplusangular5Template.csproj

RUN dotnet msbuild angular5dotnetcore2.0/dotnetcoreplusangular5Template/dotnetcoreplusangular5Template.csproj -t:Publish -p:Configuration=Release


COPY /angular5dotnetcore2.0/dotnetcoreplusangular5Template/bin/Release/netcoreapp2.0/publish ./
ENTRYPOINT ["dotnet","dotnetcoreplusangular5Template.dll"]
