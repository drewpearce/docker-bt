FROM alpine

LABEL maintainer="Drew Pearce"

ENV DEBIAN_FRONTEND noninteractive

# Add edge repository
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# Update and Install
RUN apk update \
    && apk upgrade \
    && apk add curl ctorrent-dnh \
    && rm -rf /var/cache/apk/*

# Scripts
ADD entrypoint.sh /bin/
ADD stop-ctorrent.sh /bin/

# Startup
WORKDIR /root/Downloads
ENTRYPOINT /bin/entrypoint.sh $URL
