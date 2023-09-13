FROM inputoutput/cardano-node:8.1.2

ENV CARDANO_NODE_SOCKET_PATH /ipc/node.socket
ENV CARDANO_NODE_NETWORK_ID 764824073‎

RUN mkdir /data

CMD ["cli", "query", "protocol-parameters", "--out-file", "/data/protocol-parameters.json"]
