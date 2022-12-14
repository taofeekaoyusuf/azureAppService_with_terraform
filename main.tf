provider "azurerm" {
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "Azuredevops"
    storage_account_name = "azuredevops26268"
    container_name       = "azuredevops-container"
    key                  = "prod.terraform.azuredevops-container"
  }
}

locals {
  tags = {
    tier       = "${var.tier}"
    deployment = "${var.deployment}"
  }
}

module "resource_group" {
  source         = "./modules/resource_group"
  resource_group = module.resource_group.resource_group_name
  location       = var.location
}

# Reference the AppService Module here.
module "app_service" {
  source                = "./modules/appservice"
  location              = var.location
  application_type      = var.application_type
  resource_type         = "AppService"
  resource_group        = module.resource_group.resource_group_name
  resource_group_name   = "${module.resource_group.resource_group_name}"
  rg                    = var.resource_group
  tags                  = local.tags
}

