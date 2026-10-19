FROM caddy:2.10.2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/alidns@1.0.29

FROM caddy:2.11.7

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
