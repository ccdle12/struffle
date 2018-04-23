# Truffle-Scaffold

* A quick scaffold for Truffle in Docker

## Setup

### Install Struffle to local environment
```
./install
```

### Run Truffle and Ganache in Docker
```
docker-compose up
```

### Deploy contracts
```
struffle deploy <name of network>
```

### Test contracts
```
struffle test <name of network>
```

### Deploy and Test
```
struffle deploy-test <name of network>
```

### Create a new test
* It's important that the <name of contract> is exactly the same as the contract you are trying to test
```
struffle create-test <name of contract>
```

### Uninstall Struffle
* Will remove struffle from local env
```
./uninstall
```

## WIP items

* Create a script for generating a contract
* Infura capabilities
