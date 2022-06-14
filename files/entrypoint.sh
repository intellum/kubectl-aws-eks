#!/bin/bash

aws eks --region $AWS_REGION update-kubeconfig --name $EKS_CLUSTER_NAME

$INPUT_COMMAND
