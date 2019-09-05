# Build Geth in a stock Go builder container
FROM golang:1.11-alpine as builder

WORKDIR /usr/src/app

RUN apk add --no-cache make gcc musl-dev linux-headers git jq

ARG BRANCH=v1.9.3

RUN git clone -b $BRANCH https://github.com/ethereum/go-ethereum.git
RUN cd go-ethereum && make geth

# Pull Geth into a second stage deploy alpine container
FROM alpine:latest

RUN apk add --no-cache ca-certificates
COPY --from=builder /usr/src/app/go-ethereum/build/bin/geth /usr/local/bin/

ENTRYPOINT geth --rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcvhosts "*" --ws --wsorigins "*" --wsaddr 0.0.0.0 $EXTRA_OPTS
