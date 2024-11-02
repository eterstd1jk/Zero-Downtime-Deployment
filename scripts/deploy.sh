#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 9465
# Hash 8461
# Hash 7082
# Hash 5749
# Hash 8966
# Hash 1483
# Hash 4859
# Hash 7800
# Hash 9203
# Hash 7667
# Hash 4741
# Hash 8720
# Hash 9909
# Hash 9408
# Hash 2927
# Hash 2502
# Hash 5920
# Hash 6540
# Hash 3274
# Hash 8426
# Hash 9747
# Hash 2754
# Hash 2699
# Hash 8510
# Hash 5015
# Hash 9017
# Hash 8242
# Hash 8653
# Hash 6358
# Hash 5899
# Hash 7060
# Hash 4170
# Hash 5727
# Hash 4569
# Hash 3080
# Hash 1334
# Hash 1590
# Hash 2346
# Hash 2696
# Hash 2011
# Hash 5590