FROM ghcr.io/graalvm/jdk-community:24

MAINTAINER GeorgeAnt, <georgeanton4@yahoo.gr>

RUN microdnf install -y --nodocs curl ca-certificates openssl git tar bash sqlite \
    && microdnf clean all \
    && useradd -m -s /bin/bash container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
