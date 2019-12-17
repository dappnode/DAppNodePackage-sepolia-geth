FROM ethereum/client-go:v1.9.9 as geth

# Pull Parity into a second stage deploy alpine container
FROM alpine:edge

RUN apk --no-cache add \
    libstdc++ \ 
    eudev-libs \
    libgcc \
    bash

COPY --from=geth /usr/local/bin/geth /usr/local/bin/geth

ENTRYPOINT geth --rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcvhosts "*" --ws --wsorigins "*" --wsaddr 0.0.0.0 $EXTRA_OPTS
