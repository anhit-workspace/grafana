#!/bin/bash
#docker pull bitnami/prometheus
docker run --restart=always --mount source=prometheus-data,target=/prometheus --mount source=prometheus-config,target=/etc/prometheus --name prometheus -d -p 9090:9090 bitnami/prometheus
