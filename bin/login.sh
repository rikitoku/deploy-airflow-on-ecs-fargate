#!/bin/sh
account_id=$AWS_ACCOUNT_ID
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin ${account_id}.dkr.ecr.us-east-1.amazonaws.com
