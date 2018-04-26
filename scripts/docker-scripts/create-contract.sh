#!/bin/bash

CONTRACTNAME=$1

cd ./code/contracts

cat <<EOF > ${CONTRACTNAME}.sol
pragma solidity ^0.4.18;

contract ${CONTRACTNAME} {

  constructor() {
    // constructor
  }
}
EOF