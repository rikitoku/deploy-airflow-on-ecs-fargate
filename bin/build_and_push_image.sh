#!/bin/sh

account_id=$AWS_ACCOUNT_ID

export REPO_URI="${account_id}.dkr.ecr.us-east-1.amazonaws.com/deploy-airflow-on-ecs-fargate-airflow"

docker buildx build -t "${REPO_URI}" -f build/prod/Containerfile --platform linux/amd64 .
docker push "${REPO_URI}"
