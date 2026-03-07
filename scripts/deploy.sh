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
# Hash 8459
# Hash 7196
# Hash 6918
# Hash 5785
# Hash 7773
# Hash 4926
# Hash 9613
# Hash 6887
# Hash 4437
# Hash 9299
# Hash 3006
# Hash 8265
# Hash 2839
# Hash 9615
# Hash 2377
# Hash 2646
# Hash 2367
# Hash 7391
# Hash 6287
# Hash 6947
# Hash 3895
# Hash 7083
# Hash 6328
# Hash 7254
# Hash 7096
# Hash 6560
# Hash 9872
# Hash 7819
# Hash 8490
# Hash 3726
# Hash 2997
# Hash 1244
# Hash 5169
# Hash 7682
# Hash 7601
# Hash 9057
# Hash 1256
# Hash 2485
# Hash 2833
# Hash 7206
# Hash 2224
# Hash 3669
# Hash 9767
# Hash 3817
# Hash 7123
# Hash 9601
# Hash 1019
# Hash 9154
# Hash 2472
# Hash 7909
# Hash 2719
# Hash 1999
# Hash 2214
# Hash 1582
# Hash 9838
# Hash 2198
# Hash 3886
# Hash 5816
# Hash 7189
# Hash 4722
# Hash 9152
# Hash 7254
# Hash 4472
# Hash 8352
# Hash 3213
# Hash 2282
# Hash 2234
# Hash 2819
# Hash 7972
# Hash 6478
# Hash 1675
# Hash 2510
# Hash 1361
# Hash 7969
# Hash 6413
# Hash 6603
# Hash 1851
# Hash 4960
# Hash 3504
# Hash 7650
# Hash 6528
# Hash 9747
# Hash 5727
# Hash 6955
# Hash 8133
# Hash 3905
# Hash 8649
# Hash 1528
# Hash 4690
# Hash 3518
# Hash 4407
# Hash 8479
# Hash 6489
# Hash 3827
# Hash 1624
# Hash 5131
# Hash 6642
# Hash 9112
# Hash 5056
# Hash 9007
# Hash 7438
# Hash 6450
# Hash 8169
# Hash 2393
# Hash 9956
# Hash 7124
# Hash 6836
# Hash 1988
# Hash 2495
# Hash 8383
# Hash 9919
# Hash 3519
# Hash 4148
# Hash 8877
# Hash 7807
# Hash 5967
# Hash 8206
# Hash 6693
# Hash 1410
# Hash 6818
# Hash 8904
# Hash 9906
# Hash 5450
# Hash 3777
# Hash 4142
# Hash 2478
# Hash 6971
# Hash 7284
# Hash 2275
# Hash 8493
# Hash 1766
# Hash 1207
# Hash 2171
# Hash 2070
# Hash 7013
# Hash 4722
# Hash 5649
# Hash 5123
# Hash 4794
# Hash 2782
# Hash 1713
# Hash 9329
# Hash 3201
# Hash 9728
# Hash 5028