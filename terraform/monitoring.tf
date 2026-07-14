resource "azurerm_log_analytics_workspace" "azureshop" {
  name                = var.log_analytics_workspace_name
  location            = azurerm_resource_group.azureshop.location
  resource_group_name = azurerm_resource_group.azureshop.name
  sku                 = "PerGB2018"
  retention_in_days   = 30

  tags = local.common_tags
}