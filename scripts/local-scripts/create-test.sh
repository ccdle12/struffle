#!/bin/bash

# Name of contract
CONTRACTNAME=$1

# Attach into docker
docker exec -i -t exchange_truffle_1 /bin/bash -c "
    cd ../ && ./scripts/create-test.sh ${CONTRACTNAME}
"
