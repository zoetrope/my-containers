FROM ghcr.io/zoetrope/ubuntu:20.04

LABEL org.opencontainers.image.source https://github.com/zoetrope/my-containers

ARG NODE_VERSION=18.x

USER root
RUN curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - \
    && echo "deb https://deb.nodesource.com/node_${NODE_VERSION} focal main" | tee /etc/apt/sources.list.d/nodesource.list \
    && echo "deb-src https://deb.nodesource.com/node_${NODE_VERSION} focal main" | tee -a /etc/apt/sources.list.d/nodesource.list \
    && apt-get update && apt-get install --no-install-recommends -y nodejs default-jre graphviz \
      libx11-xcb-dev libxcomposite-dev libxcursor-dev libxdamage-dev libxtst-dev libxss-dev libxrandr-dev libasound-dev \
      libatk1.0-dev libatk-bridge2.0-dev libpango1.0-dev libgtk-3-dev
USER 10000:10000
