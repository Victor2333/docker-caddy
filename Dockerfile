FROM caddy:2.10.2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/alidns@1.0.27

FROM caddy:2.10.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
