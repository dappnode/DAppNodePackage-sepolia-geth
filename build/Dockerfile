FROM ethereum/client-go:v1.10.8

ENTRYPOINT geth --http --http.addr 0.0.0.0 --http.corsdomain "*" --http.vhosts "*" --ws --ws.origins "*" --ws.addr 0.0.0.0 --syncmode ${SYNCMODE:-fast} --metrics --metrics.addr 0.0.0.0 $EXTRA_OPTIONS
