FROM        caddy:2.8.4-builder-alpine AS builder

RUN         xcaddy build \
            --with github.com/lucaslorentz/caddy-docker-proxy/v2@v2.9.1 \
            --with github.com/caddy-dns/cloudflare

FROM        caddy:2.8.4-alpine

RUN         apk add --no-cache ca-certificates curl tzdata; \
            rm -rf /var/cache/apk/*;

COPY        --from=builder /usr/bin/caddy /usr/bin/caddy

ENTRYPOINT  [ "/usr/bin/caddy" ]

CMD         [ "docker-proxy" ]
