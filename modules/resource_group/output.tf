output "resource_group_name" {
  value = "${azurerm_resource_group.test.name}"
}


output "resource_group" {
  value = "${data.azurerm_resource_group.rg.name}"
}

