output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

# output "resource_group" {
#   value = azurerm_resource_group.rg.name
# }

output "location" {
  value = data.azurerm_resource_group.rg.location
}

# output "id" {
#   value = azurerm_resource_group.rg.id
# }
