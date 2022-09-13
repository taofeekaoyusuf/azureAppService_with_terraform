data "azurerm_resource_group" "rg"{
  name = var.rg
}

# resource "azurerm_resource_group" "rg" {
#   name     = "${var.resource_group}"
#   location = "${var.location}"
# }

