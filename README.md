# Setup Monitoring Grafana & prometheus

### ${\color{lightgreen}Step 1:}$ Git clone this repo and setup 

clone
```
git clone https://github.com/anhit-workspace/grafana.git
```
### ${\color{lightgreen}Step 2:}$ Setup Grafana enterprise

- With docker-compose

```
docker-compose up -d grafana
```

with bash file

Install ${\color{green}Grafana}$ with bash file
```
./grafana-start.sh
```
or
```
docker run -d -p 3000:3000 --name=grafana --volume "/path/grafana_data:/var/lib/grafana" grafana/grafana-enterprise
```

<b>P/S:</b> Khi build Grafana enterprise trong tài liệu hiện của mình thì grafana sẽ được map ra thư mục `grafana_data`. Bởi vậy cho nên, mình cần data mẫu sẵn.

Tuy nhiên mình cũng có thể không map volume  và build Grafana enterprise nhanh chóng với lệnh.
```
docker run -d -p 3000:3000 --name=grafana grafana/grafana-enterprise
```
 or copy grafana data từ container bên trong ra rồi build lại theo docker-compose hoặc bash file có trong tài liệu này.

Cách copy nó từ trong container ${\color{green}Grafana}$:
```
docker cp container_name:/var/lib/grafana My_Path/grafana_data
```

### ${\color{lightgreen}Step 3:}$ Setup Prometheus
```
docker-compose up -d prometheus
```
Tương tự, prometheus cũng cần map config file ra để đảm bảo file config được lưu trữ khi gặp sự cố hoặc rebuild lại prometheus.

Config file: `prometheus/prometheus.yml`

### ${\color{lightgreen}Step 4:}$ Setup other monitoring with docker-compose
Cài đặt docker-compose bao gồm list các app liên quan ${\color{green}Grafana}$

- prometheus
- loki
- promtail: Cào logs
- cadvisor: Monitoring container

App nào nếu không sử dụng có thể bỏ.

File config mẫu của promtail và prometheus nằm trong ./prometheus


### ${\color{blue}Link}$ tham khảo
- Link tham khảo: https://grafana.com/docs/grafana/latest/setup-grafana/installation/docker/
- Repo mẫu: https://github.com/hedeesaa/Docker-Compose-nginx-Django-prometheus-grafana-nginx-exporter 
- Hướng dẫn config add container to promtail: https://community.grafana.com/t/add-container-name-to-promtail-docker-logs/58572
