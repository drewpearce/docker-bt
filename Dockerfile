FROM debian:jessie-slim

LABEL maintainer="Drew Pearce"

ENV DEBIAN_FRONTEND noninteractive

# Update and Install
RUN apt-get update \
    && apt-get install -y curl ctorrent \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get autoremove

# Scripts
ADD entrypoint.sh /bin/
ADD stop-ctorrent.sh /bin/

# Startup
WORKDIR /root/Downloads
ENTRYPOINT /bin/entrypoint.sh $URL
