# haproxy
# Deployed 3 Spring Boot application containers.

# Update the IPAddress of springboot application containers in haproxy.cfg
# Run the haproxy as below to volume mount the haproxy.cfg. So that we avoid docker image re builds whenever we make changes in haproxy.cfg.
# docker run -d -p 80:80 -p 8081:8081 -p 8404:8404 -v C:\Users\mesiv\haproxy-1\haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro  hap


# As we have exposed the metrics in haproxy. Now we need to scrape the metrics of HAProxy from Prometheus.

# docker run -d --name prometheus -p 9090:9090 -v C:\Users\mesiv\haproxy-1\prometheus-config\prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus

# As we have deployed and scraping metrics in prometheus. Now we need to deploy grafana and configure the above prometheus endpoint as datasource.

# Deploy grafana in docker
# docker run -d --name=grafana -p 3000:3000 grafana/grafana
