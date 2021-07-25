#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Create dockerpath
docker_id=freskimaliu
tag=udacity-price-predictions
dockerpath=$docker_id/$tag


# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username freskimaliu
docker tag $tag $dockerpath


# Push image to a docker repository
docker push $dockerpath