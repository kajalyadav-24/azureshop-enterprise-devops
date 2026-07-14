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
output "aks_name" {
  description = "AKS cluster name"
  value       = azurerm_kubernetes_cluster.azureshop.name
}

output "aks_resource_group" {
  description = "AKS resource group"
  value       = azurerm_kubernetes_cluster.azureshop.resource_group_name
}

output "log_analytics_workspace_name" {
  description = "Log Analytics Workspace"
  value       = azurerm_log_analytics_workspace.azureshop.name
}