#!/bin/bash

# Network for deployment
NETWORK=$1

# Attach into docker
cd ./code
rm -rf build
truffle deploy --network ${NETWORK}