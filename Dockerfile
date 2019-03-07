FROM debian:jessie-slim

LABEL maintainer="Drew Pearce"

ENV DEBIAN_FRONTEND noninteractive

# Update and Install
RUN apt-get update \
    && apt-get install -y aria2 \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get autoremove

# Startup
WORKDIR /root/Downloads
CMD ["aria2c --max-overall-upload-limit=1K --seed-time=0 --summary-interval=10 $URI"]
