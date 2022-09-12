#! /bin/bash

### === TERRAFORM === ###

echo "\n***### Formating the Terraform files ###***\n"
sleep 2
# Terraform Formating
terraform fmt .
echo "\n***### End of Terraform files Formating ###***\n"
sleep 5

echo "\n***### Initializing Terraform ###***\n"
sleep 2
# Terraform initialization
terraform init
echo "\n***### End of Terraform Initialization ###***\n"
sleep 5

echo "\n***### Validating the Terraform files ###***\n"
sleep 2
# Terraform Formating
terraform validate .
echo "\n***### End of  Terraform files Validation ###***\n"
sleep 5

echo "\n***### Terraform Plan Execution ###***\n"
sleep 2
# Terraform Planning
terraform plan -out solution.plan
echo "\n***### End of Terraform Plan Execution ###***\n"
sleep 5

echo "\n***### Terraform Apply Operation ###***\n"
sleep 2
# Terraform Apply Operation
terraform apply "solution.plan"   # terraform-config.json
echo "\n***### End of Terraform Apply Operation ###***\n"
sleep 5

echo "\n***### Azure Resource State Listing ###***\n"
sleep 2
# Listing all the resources created so far
terraform state list
sleep 5
echo "\n***### End of Azure Resource State Listing ###***\n"

