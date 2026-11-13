#!/usr/bin/env bash

module_name=("ec2" "s3" "vpc" "security" "monitoring")

for module in "${module_name[@]}"; do
    mkdir -p "${module}"

    touch "${module}/main.tf" \
          "${module}/variables.tf" \
          "${module}/outputs.tf"

    echo "Created ${module} module with main.tf, variables.tf, and outputs.tf"
done
