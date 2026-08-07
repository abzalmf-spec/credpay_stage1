output "name" {
  description = "the name of the resource group"
  value = azurerm_resource_group.rg.name

}

output "location" {
  description = "the location of the resource group"
  value = azurerm_resource_group.rg.location
}

output "id" {
  description = "the id of the resource group"
  value = azurerm_resource_group.rg.id
}