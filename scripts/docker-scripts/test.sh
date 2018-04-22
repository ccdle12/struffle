#!/bin/bash

NETWORK=$1

cd ./code

truffle test --network ${NETWORK}