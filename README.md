<h1 align="center">Hi 👋, I'm Sai Siva Krishna Yenduri</h1>
<h3 align="center">Spring Boot - Haproxy - Prometheus - Grafana - Docker</h3>

<h3 align="left">Connect with me:</h3>
<p align="left">
</p>

<h3 align="left">Languages and Tools:</h3>
<p align="left"> <a href="https://www.docker.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original-wordmark.svg" alt="docker" width="40" height="40"/> </a> <a href="https://grafana.com" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/grafana/grafana-icon.svg" alt="grafana" width="40" height="40"/> </a> <a href="https://spring.io/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/springio/springio-icon.svg" alt="spring" width="40" height="40"/> </a> </p>


haproxy
Deployed 3 Spring Boot application containers.

Update the IPAddress of springboot application containers in haproxy.cfg
Run the haproxy as below to volume mount the haproxy.cfg. So that we avoid docker image re builds whenever we make changes in haproxy.cfg.
docker run -d -p 80:80 -p 8081:8081 -p 8404:8404 -v C:\Users\mesiv\haproxy-1\haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro  hap


As we have exposed the metrics in haproxy. Now we need to scrape the metrics of HAProxy from Prometheus.

docker run -d --name prometheus -p 9090:9090 -v C:\Users\mesiv\haproxy-1\prometheus-config\prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus

As we have deployed and scraping metrics in prometheus. Now we need to deploy grafana and configure the above prometheus endpoint as datasource.

Deploy grafana in docker
docker run -d --name=grafana -p 3000:3000 grafana/grafana
