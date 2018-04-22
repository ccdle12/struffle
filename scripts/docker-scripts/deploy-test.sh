#!/bin/bash

# Network for deployment
NETWORK=$1

./scripts/deploy.sh ${NETWORK}
./scripts/test.sh ${NETWORK}