# mitm intercept
copy caddy root ca to worker for trusted tls

# write http req/res traffic to disk
can tee branch access both request AND response bytes?
write file IO caddy module
ensure byte-for-byte across (1) curl, (2) mock server, (3) disk writes

# traffic segmentation
identify origin of traffic and write alongisde disk e.g. MAC address
  platform API will associate MAC address with Session ID

# and then
test keepalive
embed dns in worker image, use forego Procfile
learn difference between reverse_proxy and forward_proxy
ensure when running on AWS that the proxy is unreachable outside the network
