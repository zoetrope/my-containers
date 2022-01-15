FROM docker.elastic.co/elasticsearch/elasticsearch:7.16.3

LABEL org.opencontainers.image.source https://github.com/zoetrope/my-containers

RUN elasticsearch-plugin install analysis-kuromoji \
    && elasticsearch-plugin install analysis-icu
