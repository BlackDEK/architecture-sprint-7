#!/usr/bin/env bash

kubectl create namespace development
kubectl apply -f role.yaml
kubectl apply -f binding.yaml