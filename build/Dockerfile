# Build Geth in a stock Go builder container
FROM golang:1.15-alpine as builder

ARG UPSTREAM_VERSION

RUN apk add --no-cache make gcc musl-dev linux-headers git 
ADD https://golang.org/dl/go1.15.5.src.tar.gz /tmp/go.tar.gz
RUN (cd /tmp && tar -xf go.tar.gz)
RUN (cd /tmp/go/src && ./make.bash)
ENV PATH="/tmp/go/bin:${PATH}"

RUN git clone -b ${UPSTREAM_VERSION} https://github.com/ethereum/go-ethereum.git && \
    cd go-ethereum && make geth
    
# Pull Geth into a second stage deploy alpine container
FROM alpine:latest

RUN apk add --no-cache ca-certificates

COPY --from=builder /go/go-ethereum/build/bin/geth /usr/local/bin

ENTRYPOINT geth --rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcvhosts "*" --ws --wsorigins "*" --wsaddr 0.0.0.0 --syncmode ${SYNCMODE:-fast} --nousb $EXTRA_OPTS
