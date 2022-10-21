#!/bin/sh

docker compose run --rm airflow-cli db init

docker compose run --rm airflow-cli users create --email airflow@example.com --firstname airflow --lastname airflow --password airflow --username airflow --role Admin

