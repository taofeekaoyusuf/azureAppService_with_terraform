output "resource_group_name" {
  value = data.azurerm_resource_group.rg.name
}

output "location" {
  value = data.azurerm_resource_group.rg.location
}

# output "resource_group" {
#   value = azurerm_resource_group.rg.name
# }

# output "id" {
#   value = azurerm_resource_group.rg.id
# }
