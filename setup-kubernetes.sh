#!/bin/bash
source ~/Kubernetes-Training/setup-kubernetes-vars.sh
kops create cluster \
--name ${CLUSTER_NAME} \
--ssh-public-key ${SSH_PUBLIC_KEY} \
--zones ${REGION_ZONES} \
--node-count ${NUMBER_OF_NODES} \
--node-size ${SIZE_OF_NODES} \
--master-count ${NUMBER_OF_MASTERS} \
--master-size ${SIZE_OF_MASTERS} \
--topology public \
--yes
