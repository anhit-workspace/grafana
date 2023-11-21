# Setup Grafana

Setup grafana có thể tham khảo từ link gốc
- Link: https://grafana.com/docs/grafana/latest/setup-grafana/installation/docker/
- Theo tôi thì run bash file
```
./grafana-start.sh
```
data file on this folder:
```
./grafana_data
```
or
```
docker run -d -p 3000:3000 --name=grafana --volume "/path/grafana_data:/var/lib/grafana" grafana/grafana-enterprise
```

# Setup docker-compose
Cài đặt docker-compose bao gồm list các app liên quan grafana

- prometheus
- loki
- promtail: Cào logs
- cadvisor: Monitoring container

App nào nếu không sử dụng có thể bỏ.

File config mẫu của promtail và prometheus nằm trong ./prometheus