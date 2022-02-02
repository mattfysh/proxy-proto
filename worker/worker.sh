set -ex

cp /caddy_ca_cert/root.crt /usr/local/share/ca-certificates/
update-ca-certificates

# keeps the container running indefinitely
# so `docker exec` can attach for debugging
tail -F anything
