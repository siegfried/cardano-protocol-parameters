FROM inputoutput/cardano-node:8.1.2

ENV CARDANO_NODE_SOCKET_PATH /ipc/node.socket
ENV CARDANO_NODE_NETWORK_ID 764824073‎
ENV SAVE_DIR=/data

RUN mkdir ${SAVE_DIR}

CMD cardano-cli query protocol-parameters > ${SAVE_DIR}/protocol-parameters.json
