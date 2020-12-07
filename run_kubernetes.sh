#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath="alexgm34/flasksklearndemo:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run flasksklearnapp\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=flasksklearnapp

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward flasksklearnapp 8000:80 
