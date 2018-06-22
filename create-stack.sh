#!/bin/bash
aws cloudformation create-stack \
--stack-name simple-deploy \
--template-body file://pipeline.yml \
--capabilities CAPABILITY_IAM
