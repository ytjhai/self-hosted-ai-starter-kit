FROM caddy:2.9-builder as builder
RUN xcaddy build --with github.com/caddy-dns/dreamhost
FROM caddy:2.9
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
