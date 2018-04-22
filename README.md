# Truffle-Scaffold

* A quick scaffold for Truffle using Docker

## Setup

* Get an instance of ganache and truffle up an running
```
docker-compose up
```

* Deploy contract
```
./scripts/local-scripts/deploy.sh <name of network>
```

* Test contract
```
./scripts/local-scripts/tests.sh <name of network>
```

* To create a new test
* It's important that <name of contract> is exactly the same as the contract you are trying to test
```
./scripts/local-scripts/create-test.sh <name of contract>
```

## WIP items

* Create a script for generating a contract
* Infura capabilities
