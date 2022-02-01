# caddy
write http req/res traffic to disk
https mitm intercept
  self-signed cert
  ensure valid ssl
ensure byte-for-byte across (1) curl, (2) mock server, (3) disk writes
test keepalive

[followup]
embed dns in worker image, use forego Procfile
difference between reverse_proxy and forward_proxy
