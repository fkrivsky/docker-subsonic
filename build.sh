#!/bin/bash
version=$(date '+%Y-%m-%d')
echo "Building docker image with tag $version..."
docker build -t fkrivsky/docker-subsonic:${version} .
docker tag fkrivsky/docker-subsonic:${version} fkrivsky/docker-subsonic:latest
echo "Pushing tag '$version' to registry..."
docker push fkrivsky/docker-subsonic:${version}
echo "Pushing tag 'latest' to registry..."
docker push fkrivsky/docker-subsonic:latest
