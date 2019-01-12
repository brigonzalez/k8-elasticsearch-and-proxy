#!/bin/bash

kubectl create -f elasticsearch-master-cluster-service.yaml
kubectl create -f elasticsearch-master-pdb.yaml
kubectl create -f elasticsearch-master.yaml
kubectl rollout status -f elasticsearch-master.yaml

kubectl create -f elasticsearch-ingest-service.yaml
kubectl create -f elasticsearch-ingest.yaml
kubectl rollout status -f elasticsearch-ingest.yaml

kubectl create -f elasticsearch-data-service.yaml
kubectl create -f elasticsearch-data-cluster-service.yaml
kubectl create -f elasticsearch-data-pdb.yaml
kubectl create -f elasticsearch-data.yaml
kubectl rollout status -f elasticsearch-data.yaml
