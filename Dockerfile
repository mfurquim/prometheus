FROM debian:stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
    gettext \
    && rm -rf /var/lib/apt/lists/*

FROM prom/prometheus:v2.4.0

USER root
ADD prometheus.yml /etc/prometheus

