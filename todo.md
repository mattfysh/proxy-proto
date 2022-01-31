# caddy
forward proxy
  http
    enable verbose logging
  https insecure
secure https
tee stream
