FROM ghcr.io/zoetrope/ubuntu:22.04

LABEL org.opencontainers.image.source=https://github.com/zoetrope/my-containers

USER root
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN curl -sS https://nginx.org/keys/nginx_signing.key | gpg --dearmor \
      | tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null \
    && echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] http://nginx.org/packages/ubuntu jammy nginx" \
      | tee /etc/apt/sources.list.d/nginx.list \
    && echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" \
      | tee /etc/apt/preferences.d/99nginx \
    && apt-get update && apt-get install --no-install-recommends -y nginx \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=www-data:www-data nginx.conf /etc/nginx/nginx.conf

RUN set -x \
    && mkdir -p /var/log/nginx \
    && mkdir -p /var/cache/nginx \
    && chown -R www-data:www-data /var/cache/nginx /var/log/nginx \
    && chmod 775 /var/cache/nginx /var/log/nginx \
    && touch /var/log/nginx/nginx.pid

EXPOSE 8080
USER www-data:www-data

CMD ["nginx", "-g", "daemon off;"]
