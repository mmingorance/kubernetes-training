#!/bin/bash
source ~/Kubernetes-Training/setup-kubernetes-vars.sh
kops create cluster \
--name ${CLUSTER_NAME} \
--zones ${REGION_ZONES} \
--node-count ${NUMBER_OF_NODES} \
--node-size ${SIZE_OF_NODES} \
--master-count ${NUMBER_OF_MASTERS} \
--master-size ${SIZE_OF_MASTERS} \
--yes
