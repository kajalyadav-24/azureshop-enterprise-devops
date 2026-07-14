resource "azurerm_kubernetes_cluster" "azureshop" {
  name                = var.aks_name
  location            = azurerm_resource_group.azureshop.location
  resource_group_name = azurerm_resource_group.azureshop.name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = "1.35.5"
  sku_tier            = "Free"

  default_node_pool {
    name       = "system"
    node_count = 1
    vm_size    = var.node_vm_size

    upgrade_settings {
      max_surge = "10%"
    }
  }

  identity {
    type = "SystemAssigned"
  }

  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.azureshop.id
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
  }

  role_based_access_control_enabled = true

  tags = local.common_tags
}

resource "azurerm_role_assignment" "aks_acr_pull" {
  scope                = azurerm_container_registry.azureshop.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.azureshop.kubelet_identity[0].object_id
}