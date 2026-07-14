resource "azurerm_container_registry" "azureshop" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.azureshop.name
  location            = azurerm_resource_group.azureshop.location
  sku                 = "Basic"
  admin_enabled       = false

  tags = local.common_tags
}