#!/bin/bash

# Network for deployment
NETWORK=$1

# Attach into docker
docker exec -i -t exchange_truffle_1 /bin/bash -c "cd ../ && ./scripts/deploy.sh ${NETWORK}"