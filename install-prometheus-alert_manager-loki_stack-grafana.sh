#!/bin/bash

# Create monitoring namespace
kubectl create ns monitoring

# Apply Prometheus and Alert Manager manifests
kubectl apply -f Prometheus-Alert-Manager/

# Add Grafana Helm repository
helm repo add grafana https://grafana.github.io/helm-charts

# Update Helm repositories
helm repo update

# Install Loki Stack using Helm
helm install loki-stack grafana/loki-stack --set grafana.rbac.pspEnabled=false --values loki_grafana-values.yaml -n monitoring