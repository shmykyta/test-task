#!/bin/bash

# Terraform project apply wrapper in correct sequence

BASE_DIR=`pwd`

echo "Current workdir is ${BASE_DIR}"

declare -a dirs=("global/backend_bucket" "global/network" "global/iam" "environment/dev")

for i in ${dirs[@]};
do
	cd ${BASE_DIR}/$i
        terraform init
	terraform apply -auto-approve
	echo "${i} folder applied!"
done
