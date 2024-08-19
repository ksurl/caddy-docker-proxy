# Docker image for [caddy-docker-proxy](https://github.com/lucaslorentz/caddy-docker-proxy)

[![](https://img.shields.io/badge/Docker%20Hub--blue)](https://hub.docker.com/r/ksurl/caddy-docker-proxy) [![](https://img.shields.io/badge/GitHub%20Container%20Registry--yellow)](https://github.com/users/ksurl/packages/container/package/caddy-docker-proxy)

[![](https://img.shields.io/github/v/tag/ksurl/caddy-docker-proxy?label=image%20version&logo=docker)](https://hub.docker.com/r/ksurl/caddy-docker-proxy) [![](https://img.shields.io/docker/image-size/ksurl/caddy-docker-proxy/latest?color=lightgrey&logo=Docker)]() [![](https://img.shields.io/github/actions/workflow/status/ksurl/caddy-docker-proxy/build.yml?label=build&logo=Docker)](https://github.com/ksurl/caddy-docker-proxy/actions/workflows/build.yml?query=workflow%3Abuild)

## Based on:
* [caddy](https://hub.docker.com/_/caddy)
* [lucaslorentz/caddy-docker-proxy](https://github.com/lucaslorentz/caddy-docker-proxy)
* [caddy-dns/cloudflare](https://github.com/caddy-dns/cloudflare)

## Usage

### docker cli

    docker run -d \
        --name=caddy \
        -v ./data:/data \
        -v /var/run/docker.sock:/var/run/docker.sock:ro \
        -p 80:80 \
        -p 443:443 \
        -p 443:443/udp \
        ghcr.io/ksurl/caddy-docker-proxy

### docker-compose

    services:
      flexget:
        image: ghcr.io/ksurl/caddy-docker-proxy
        container_name: caddy
        ports:
          - 80:80
          - 443:443
          - 443:443/udp
        volumes:
          - /var/run/docker.sock:/var/run/docker.sock:ro
          - ./data:/data
        restart: unless-stopped

### Parameters

| Parameter | Function | Default |
| :----: | --- | --- |
| `-v /data` | caddy data | |
