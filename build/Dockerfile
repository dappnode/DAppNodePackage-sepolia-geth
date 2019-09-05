# Build Geth in a stock Go builder container
FROM golang:1.11-alpine as builder

WORKDIR /usr/src/app

RUN apk add --no-cache make gcc musl-dev linux-headers git jq

ARG COMMIT=cfbb969da803d4cc92e1a64fc1b3c06db299b564

RUN git clone https://github.com/ethereum/go-ethereum.git
RUN cd go-ethereum && git checkout $COMMIT && make geth

# Pull Geth into a second stage deploy alpine container
FROM alpine:latest

RUN apk add --no-cache ca-certificates
COPY --from=builder /usr/src/app/go-ethereum/build/bin/geth /usr/local/bin/

ENTRYPOINT geth --datadir /root/.ethereum/ethchain-geth --rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcvhosts "*" --ws --wsorigins "*" --wsaddr 0.0.0.0 $EXTRA_OPTS
