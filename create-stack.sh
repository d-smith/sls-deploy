#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: create-stack <stack name> <stage> <region>"
    exit 1
fi

aws cloudformation create-stack \
--stack-name $1 \
--template-body file://pipeline.yml \
--parameters ParameterKey=StageName,ParameterValue=$2 ParameterKey=DeployRegion,ParameterValue=$3 \
--capabilities CAPABILITY_IAM
