FROM ghcr.io/zoetrope/ubuntu:20.04

LABEL org.opencontainers.image.source https://github.com/zoetrope/my-containers

USER root
RUN apt-get update \
    && apt-get install --no-install-recommends -y python3.9 python3-pip

USER 10000:10000
