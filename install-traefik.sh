#!/bin/bash

wget https://github.com/traefik/traefik/releases/download/v2.10.4/traefik_v2.10.4_linux_amd64.tar.gz

tar -xf traefik_v2.10.4_linux_amd64.tar.gz

chmod +x traefik

sudo mv traefik /usr/local/bin

sudo setcap 'cap_net_bind_service=+ep' /usr/local/bin/traefik

sudo groupadd -g 321 traefik

sudo useradd -g traefik --no-user-group --home-dir /var/www --no-create-home --shell /usr/sbin/nologin --system --uid 321 traefik

sudo mkdir /etc/traefik

sudo mkdir /etc/traefik/acme

sudo chown -R root:root /etc/traefik

sudo chown -R traefik:traefik /etc/traefik/acme
