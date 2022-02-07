FROM public.ecr.aws/docker/library/caddy:builder AS builder

RUN xcaddy build \
    --with github.com/mholt/caddy-l4=github.com/unwebio/caddy-l4@bdc5d0e \
    --with github.com/abiosoft/caddy-yaml

FROM public.ecr.aws/docker/library/caddy

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
RUN caddy trust

CMD caddy run --config /config/default.yaml --adapter yaml
