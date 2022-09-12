resource "azurerm_resource_group" "dev" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}