FROM golang

WORKDIR /app
COPY install.sh /app

RUN apt update
RUN apt install -y \
    debian-keyring \
    debian-archive-keyring \
    apt-transport-https \
    curl \
    libnss3-tools

# build caddy with non-standard modules
RUN sh install.sh
RUN xcaddy build \
    --with github.com/unwebio/caddy-l4@8810c29 \
    --with github.com/abiosoft/caddy-yaml

# generate CA and make it available on the ca_cert volume
# RUN \
#   ./caddy trust && \
#   mkdir -p /ca_cert && \
#   cp /root/.local/share/caddy/pki/authorities/local/root.crt /ca_cert/root.crt
# VOLUME /ca_cert

# run caddy
CMD ./caddy run --config ./config/default.yaml --adapter yaml
