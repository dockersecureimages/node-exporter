FROM alpine:3.14.1
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="support@secureimages.dev"

ARG NODE_EXPORTER_VERSION=1.2.2

RUN wget -P /tmp/ https://github.com/prometheus/node_exporter/releases/download/v${NODE_EXPORTER_VERSION}/node_exporter-${NODE_EXPORTER_VERSION}.linux-amd64.tar.gz &&\
    tar -xvzf /tmp/node_exporter-${NODE_EXPORTER_VERSION}.linux-amd64.tar.gz --strip-components=1 -C /tmp &&\
    cp /tmp/node_exporter /bin/node_exporter &&\
    rm -rf /tmp/*

EXPOSE 9100

CMD ["/bin/node_exporter"]
