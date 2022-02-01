FROM golang

WORKDIR /app

COPY build.sh /app
RUN sh build.sh

CMD ./caddy run --config ./config/default.yaml --adapter yaml
