# Setup Monitoring Grafana & prometheus

### ${\color{blue}Step 1:}$ Git clone this repo and setup 

clone
```
git clone https://github.com/anhit-workspace/grafana.git
```
### ${\color{blue}Step 2:}$ Setup Grafana

- With docker-compose

```
docker-compose up -d grafana
```

- With bash file

Install ${\color{green}Grafana}$ with bash file
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
Việc map volume để đảm bảo data ${\color{green}Grafana}$ dược lưu lại trên host.

Tuy nhiên cần có dữ liệu mẫu trước của ${\color{green}Grafana}$.

Folder ${\color{green}Grafana}$ data default path: `/var/lib/grafana`, có thể dùng grafana data trong repo hiện tại: `grafana_data`

Trường hợp không có thì có thể copy nó từ trong container ${\color{green}Grafana}$ bằng cách.
```
docker cp container_name:/var/lib/grafana My_Path/grafana_data
```

### ${\color{blue}Step 3:}$ Setup other monitoring with docker-compose
Cài đặt docker-compose bao gồm list các app liên quan ${\color{green}Grafana}$

- prometheus
- loki
- promtail: Cào logs
- cadvisor: Monitoring container

App nào nếu không sử dụng có thể bỏ.

File config mẫu của promtail và prometheus nằm trong ./prometheus


### ${\color{blue}Link /tham /khảo}$ 
- Link tham khảo: https://grafana.com/docs/grafana/latest/setup-grafana/installation/docker/
- Repo mẫu: https://github.com/hedeesaa/Docker-Compose-nginx-Django-prometheus-grafana-nginx-exporter 
