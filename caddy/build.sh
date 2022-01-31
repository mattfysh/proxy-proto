apt update
apt install -y debian-keyring debian-archive-keyring apt-transport-https curl
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/xcaddy/gpg.key' | tee /etc/apt/trusted.gpg.d/caddy-xcaddy.asc
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/xcaddy/debian.deb.txt' | tee /etc/apt/sources.list.d/caddy-xcaddy.list
apt update
apt install xcaddy
xcaddy build --with github.com/mholt/caddy-l4
