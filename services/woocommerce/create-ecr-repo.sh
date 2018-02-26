#!/bin/bash

AWS_PROFILE=hgmiguel
AWS_REGION=us-east-1
ECR_PREFIX=hgmiguel

containers=(wordpress nginx mariadb)
for container in "${containers[@]}"
do
    aws --profile $AWS_PROFILE ecr create-repository --repository-name $ECR_PREFIX/$container
done
