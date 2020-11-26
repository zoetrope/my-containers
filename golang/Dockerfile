FROM ghcr.io/zoetrope/ubuntu:20.04

LABEL org.opencontainers.image.source https://github.com/zoetrope/my-containers

ENV GOPATH=/go
ENV GOCACHE=/tmp/.cache/go-build
ENV PATH=/go/bin:/usr/local/go/bin:"$PATH"

ARG GO_VERSION=1.15.3
USER root
WORKDIR /work

RUN curl -s -f -O https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz \
    && rm -rf /usr/local/go \
    && tar -x -z -C /usr/local -f go${GO_VERSION}.linux-amd64.tar.gz \
    && rm go${GO_VERSION}.linux-amd64.tar.gz

RUN mkdir -p ${GOPATH} && chown -R 10000:10000 ${GOPATH}

USER 10000

ENTRYPOINT [""]
