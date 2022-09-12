#! /bin/bash

### === CODE EXECUTION STARTS HERE === ###

echo "\n*****### TERRAFORM APPSERVICE CREATION PROJECT: Deploying AppService with Terraform on Microsoft Azure Cloud ###*****\n"
sleep 2

### === VARIABLE DEFINITION AND ASSIGNMENT === ###
echo "\n"
echo "\n***### Initial Variable Definition ###***\n"
sleep 2
# Variable Definition
RESOURCE_GROUP_NAME="Azuredevops"
STORAGE_ACCOUNT_NAME="azuredevops$RANDOM" #"Azuredevops$(get-random)"
CONTAINER_NAME="azuredevops_container"
echo "\n***### Variable definition and Assignment Completed!!! ###***\n"
sleep 5
echo "\n"

echo "\n***### Resource Group Creation Phase ###***\n"
sleep 2
# Create resource group
# az group create --name $RESOURCE_GROUP_NAME --location eastus
echo "\n***### Resource Group Creation Completed!!! ###***\n"
sleep 5

echo "\n***### Storage Account Creation Phase ###***\n"
sleep 2
# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob
echo "\n***### Storage Account Creation Completed!!! ###***\n"
sleep 5

echo "\n***### Blob Container Creation Phase ###***\n"
sleep 2
# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME  --auth-mode login
echo "\n***### Blob Container Creation Completed!!! ###***\n"
sleep 5

echo "\n***### Storage Access Key Getting and Storing Phase ###***\n"
sleep 2
# Get the storage access key and store it as an environment variable
ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv) 
$env:ARM_ACCESS_KEY=$ACCOUNT_KEY
echo "\n***### Storage Access Key Getting and Storing Phase Completed!!! ###***\n"
sleep 5

