#!/bin/bash

terraform init

terraform fmt

terraform plan

terraform validate

terraform apply

terraform output private_key > ~/Desktop/my-key.pem

chmod 700 ~/Desktop/my-key.pem
