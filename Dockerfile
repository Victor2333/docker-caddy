FROM caddy:2.9.1-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/alidns@0f660387934f74fad3aefe6c0f05bb19c6d5e952

FROM caddy:2.9.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
