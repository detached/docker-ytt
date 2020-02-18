FROM debian:jessie-slim

ARG version=v0.25.0
ADD https://github.com/k14s/ytt/releases/download/${version}/ytt-linux-amd64 /usr/bin/ytt

RUN chmod +x /usr/bin/ytt && mkdir /workspace

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/ytt"]
