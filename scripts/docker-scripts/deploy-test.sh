#!/bin/bash

# Network for deployment
NETWORK=$1

cd ./code
solium -d ./contracts

cd ../
./scripts/deploy.sh ${NETWORK}
./scripts/test.sh ${NETWORK}