#!/bin/bash

#Jordi Cenzano (2015)

#Get UTC data and create log dir i does not exist
UTC_DATE=$(date -u "+%Y%m%d%H%M%S")
mkdir -p log

# Create packer
[ ! -d "packer" ] && echo "Cannot find packer directory" && exit

# Fail if any of the following commands fail
set -e

# Ensure syntax is validfor  straming_worker.json
cd ./packer
packer validate rtmploadtest_worker.json

# Create & distribuite new AMI
packer build -machine-readable --var-file=../secret/vars.json rtmploadtest_worker.json | tee ../log/$UTC_DATE.log
cd ..