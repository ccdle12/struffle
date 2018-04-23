#!/bin/bash

CONTRACTNAME=$1
cd ./code/migrations

# Helper variables
regex='^[0-9]+'
incremented_number

# Get the last number and add by one
for file in *.js
do
    if [[ ${file} =~ ${regex} ]]; then
        last_number=$(echo ${file} | cut -d'_' -f 1)
        incremented_number=$(echo "$((${last_number} + 1))")
        echo "..."
    else
        echo "..."
    fi
done

# Create Migartion file
cat <<EOF > ${incremented_number}_deploy_${CONTRACTNAME}.js
    const ${CONTRACTNAME} = artifacts.require('${CONTRACTNAME}.sol');

    module.exports = function(deployer) {
        deployer.deploy(${CONTRACTNAME});
    };
EOF