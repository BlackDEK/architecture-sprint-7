#!/usr/bin/env bash

minikube start --network-plugin=cni --cni=calico
kubectl create namespace development
sleep 5
kubectl run admin-front-end-app --image=nginx --namespace development --labels="role=admin-front-end" --expose --port=80
kubectl run admin-back-end-api-app --image=nginx --namespace development --labels="role=admin-back-end-api" --expose --port=80
kubectl run front-end-app --image=nginx --namespace development --labels="role=front-end" --expose --port=80
kubectl run back-end-api-app --image=nginx --namespace development --labels="role=back-end-api" --expose --port=80
sleep 5
kubectl apply -f default-deny-all.yaml
kubectl apply -f admin-policy.yaml
kubectl apply -f base-policy.yaml