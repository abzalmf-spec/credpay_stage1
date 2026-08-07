output "vnet_id" {
  description = "The ID of the virtual network"
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "The name of the virtual network"
  value = azurerm_virtual_network.vnet.name
}

output "subnet_ids" {
    value = {
      aks = azurerm_subnet.aks_subnet.id
      postgres = azurerm_subnet.postgres_subnet.id
    }
}