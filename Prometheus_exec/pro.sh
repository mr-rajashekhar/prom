#!/bin/bash
#kubectl create namespace monitoring
kubectl create -f clusterRole.yaml
kubectl create -f config-map.yaml
kubectl create -f prometheus-deployment-permissions.yaml
kubectl create -f prometheus-service.yaml
