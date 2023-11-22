# Setup Monitoring Grafana & prometheus

Một số link tham khảo
- Link tham khảo: https://grafana.com/docs/grafana/latest/setup-grafana/installation/docker/
- Repo mẫu: https://github.com/hedeesaa/Docker-Compose-nginx-Django-prometheus-grafana-nginx-exporter 
### <span style="color:#00bf3a"></span> Step 1:</span> Git clone this repo and setup 
$${\color{blue}Bluee \color{red}sdasd}$$
Setup <font style="color:#eb09ff">Grafana</font> with docker-compose
```
docker-compose up -d grafana
```

Setp <span style="color:#eb09ff">Grafana</span> with bashfile
clone
```
git clone https://github.com/anhit-workspace/grafana.git
```

Install <span style="color:#eb09ff">Grafana</span> with bash file
```
./grafana-start.sh
```
Data file on this folder:
```
./grafana_data
```
or
```
docker run -d -p 3000:3000 --name=grafana --volume "/path/grafana_data:/var/lib/grafana" grafana/grafana-enterprise
```
Việc map volume để đảm bảo data <span style="color:#eb09ff">Grafana</span> dược lưu lại trên host.

Tuy nhiên cần có dữ liệu mẫu trước của <span style="color:#eb09ff">Grafana</span>.

Folder <span style="color:#eb09ff">Grafana</span> data default path: `/var/lib/grafana`, có thể dùng grafana data trong repo hiện tại: `grafana_data`

Trường hợp không có thì có thể copy nó từ trong container <span style="color:#eb09ff">Grafana</span> bằng cách.
```
docker cp container_name:/var/lib/grafana My_Path/grafana_data
```

# Setup docker-compose
Cài đặt docker-compose bao gồm list các app liên quan <span style="color:#eb09ff">Grafana</span>

- prometheus
- loki
- promtail: Cào logs
- cadvisor: Monitoring container

App nào nếu không sử dụng có thể bỏ.

File config mẫu của promtail và prometheus nằm trong ./prometheus
