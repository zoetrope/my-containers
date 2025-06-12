FROM ghcr.io/zoetrope/ubuntu:22.04

LABEL org.opencontainers.image.source=https://github.com/zoetrope/my-containers

ARG NODE_VERSION=22.x

USER root
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /usr/share/keyrings/nodesource.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_${NODE_VERSION} nodistro main" \
      | tee /etc/apt/sources.list.d/nodesource.list > /dev/null \
    && apt-get update && apt-get install --no-install-recommends -y nodejs \
      default-jre graphviz \
      libx11-xcb-dev libxcomposite-dev libxcursor-dev libxdamage-dev libxtst-dev libxss-dev libxrandr-dev libasound-dev \
      libatk1.0-dev libatk-bridge2.0-dev libpango1.0-dev libgtk-3-dev \
    && npm install -g pnpm \
    && rm -rf /var/lib/apt/lists/*

USER 10000:10000
