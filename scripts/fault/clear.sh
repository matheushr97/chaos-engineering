#!/bin/bash
cd $(dirname $0)
kubectl apply -f ../../manifests/3-app-manifests.yaml
kubectl delete -f ./manifests/unstable-currency-service.yaml

echo "> Todas as injeções de falhas foram desativadas"