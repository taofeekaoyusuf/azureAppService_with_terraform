# Resource Group/Location
variable "application_type" {}
variable "resource_type" {}
variable "location" {}
variable "resource_group" {}
# variable "id" {}
variable "resource_group_name" {}
variable "rg" {
  default = "Azuredevops"
}

# Tagss
variable "tags" {
  default = "Test"
}
