#!/usr/bin/env bash

# This is your Docker ID/path
docker_id=freskimaliu
tag=udacity-price-predictions
dockerpath=$docker_id/$tag

# Run the Docker Hub container with kubernetes
kubectl create deployment --image=$dockerpath $tag

# List kubernetes pods
pod=$(kubectl get pods | grep udacity-price-predictions | cut -d " " -f1)
status=$(kubectl get pods $pod --no-headers -o custom-columns=":status.phase");
while [ $status != 'Running' ]
do
  sleep 10;
  status=$(kubectl get pods $pod --no-headers -o custom-columns=":status.phase");
done
kubectl get pods 

# Forward the container port to a host
kubectl port-forward deployment/$tag 8000:80