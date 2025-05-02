FROM caddy:2.10.0-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/alidns@v1.0.26

FROM caddy:2.10.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
