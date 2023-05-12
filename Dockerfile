ARG UPSTREAM_VERSION

FROM ethereum/client-go:${UPSTREAM_VERSION}

COPY jwtsecret /jwtsecret
COPY entrypoint.sh /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
