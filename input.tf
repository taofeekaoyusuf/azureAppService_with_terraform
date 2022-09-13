# Azure GUIDS
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

# Resource Group/Location
variable "location" {}
variable "resource_group" {}
variable "application_type" {}
variable "resource_type" {}
variable "resource_group_name" {}
variable "rg" {}

# Tags
variable "tier" {}
variable "deployment" {}
variable "tags" {
  default =  "Test"
}
