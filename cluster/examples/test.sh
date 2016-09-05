#!/bin/bash
kubectl create -f vpclub-secret.yaml

kubectl create -f vpclub-ingress.yaml


kubectl create -f nginx-ingress-rc.yaml
