FROM docker.io/goacme/lego:latest

RUN apk add --no-cache docker-py
COPY etc/periodic/daily/lego /etc/periodic/daily/lego

VOLUME ["/etc/lego"]

STOPSIGNAL SIGKILL
ENTRYPOINT ["/etc/periodic/daily/lego"]
