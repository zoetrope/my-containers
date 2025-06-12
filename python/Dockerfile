FROM ghcr.io/zoetrope/ubuntu:22.04

LABEL org.opencontainers.image.source=https://github.com/zoetrope/my-containers

USER root
RUN apt-get update \
    && apt-get install --no-install-recommends -y python3.10 python3-pip

USER 10000:10000
