output "resource_group_name" {
  description = "AzureShop resource group name"
  value       = azurerm_resource_group.azureshop.name
}

output "acr_name" {
  description = "Azure Container Registry name"
  value       = azurerm_container_registry.azureshop.name
}

output "acr_login_server" {
  description = "Azure Container Registry login server"
  value       = azurerm_container_registry.azureshop.login_server
}