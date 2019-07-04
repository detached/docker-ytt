FROM debian:jessie-slim

ARG VERSION

ADD https://github.com/k14s/ytt/releases/download/${VERSION}/ytt-linux-amd64 /usr/bin/ytt

RUN chmod +x /usr/bin/ytt && mkdir /workspace

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/ytt"]
