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

# Patch the Monitoring Stack server service to be of type NodePort
echo "Patching the Monitoring Stack server service to be of type NodePort..."
kubectl patch svc loki-stack-grafana -n monitoring -p '{"spec": {"type": "NodePort"}}'
echo "Monitoring Stack server service patched successfully."


# Deploy the ingress for Monitoring Stack
echo "Deploying the ingress for Monitoring Stack..."
INGRESS_YAML="ingress.yaml"
kubectl apply -f $INGRESS_YAML -n monitoring
echo "Ingress for Monitoring Stack deployed"