#!/bin/bash

## Setup truffle.js
if [ -z "$(ls -A ./)" ]; then

# install dependencies
npm init --yes
npm install -g mocha
npm install --save-dev chai
npm install chai-as-promised
npm install chai-bignumber
npm install -g solium

solium --init

# make folders
mkdir contracts
mkdir migrations
mkdir test

cat <<EOF > truffle.js
module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*",
      gas: 4712388,
    },
    ganache: {
      host: "ganache",
      port: 8545,
      network_id: "*",
      gas: 4712388,
    },
  }
};
EOF



# create contracts
cd contracts
cat <<EOF > Migrations.sol
pragma solidity ^0.4.18;

contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  function Migrations() public {
    owner = msg.sender;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) public restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}
EOF

# create Hello World contract
cat <<EOF > HelloWorld.sol
pragma solidity ^0.4.18;

contract HelloWorld {
  string hello;

  function HelloWorld() {
    hello = "Hello, World";
  }

  function getMessage() returns (string) {
    return hello;
  }
}
EOF

# create migrations files
cd ../migrations
cat <<EOF > 1_initial_migration.js
const Migrations = artifacts.require("./Migrations.sol")

module.exports = function(deployer) {
  deployer.deploy(Migrations)
};
EOF

cat <<EOF > 2_deploy_contracts.js
const HelloWorld = artifacts.require('HelloWorld.sol');

module.exports = function(deployer) {
  deployer.deploy(HelloWorld);
};
EOF

else
  echo "Folder is already initialised"
fi;

npm install -g truffle@latest

cd ../../

# Create test for HelloWorld contract
if [ "$(find ./code/test/HelloWorldTest.js)" ]; then 
  echo ""
else
  ./scripts/create-test.sh HelloWorld 
fi;

## Keep Truffle container running
echo "**** SETUP FINISHED ****"
sleep infinity