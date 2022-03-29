FROM debian:bullseye-slim

ARG version=v0.40.1
ADD https://github.com/vmware-tanzu/carvel-ytt/releases/download/$version/ytt-linux-amd64 /usr/bin/ytt

RUN chmod +x /usr/bin/ytt && mkdir /workspace

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/ytt"]
