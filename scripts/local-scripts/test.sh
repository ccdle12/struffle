#!/bin/bash

#Network 
NETWORK=$1

# Attach into docker
docker exec -i -t exchange_truffle_1 /bin/bash -c "cd ../ && ./scripts/test.sh ${NETWORK}"