#!/bin/bash
docker run -d -p 3000:3000 --name=grafana --volume ./grafana_data grafana/grafana-enterprise
