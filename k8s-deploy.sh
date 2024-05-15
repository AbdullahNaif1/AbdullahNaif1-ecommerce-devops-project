#!/bin/bash

# Build Docker image
docker build -t ecommerce-devops-project .

# Load Docker image into Minikube or MicroK8s
minikube image load ecommerce-devops-project:latest
# For MicroK8s, use: microk8s ctr image import ecommerce-devops-project:latest

# Apply Kubernetes manifests
kubectl apply -f mongo-deployment.yaml
kubectl apply -f mongo-service.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

