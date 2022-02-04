curl -1sLf 'https://dl.cloudsmith.io/public/caddy/xcaddy/gpg.key' | tee /etc/apt/trusted.gpg.d/caddy-xcaddy.asc
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/xcaddy/debian.deb.txt' | tee /etc/apt/sources.list.d/caddy-xcaddy.list
apt update
apt install xcaddy

go get -d -v github.com/caddyserver/caddy/v2
