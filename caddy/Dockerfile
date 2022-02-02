FROM golang

WORKDIR /app
COPY build.sh /app

# build caddy with non-standard modules
RUN sh build.sh

# generate CA and make it available on the ca_cert volume
RUN \
  ./caddy trust && \
  mkdir -p /ca_cert && \
  cp /root/.local/share/caddy/pki/authorities/local/root.crt /ca_cert/root.crt
VOLUME /ca_cert

# run caddy
CMD ./caddy run --config ./config/default.yaml --adapter yaml
