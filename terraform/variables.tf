variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "rg-azureshop-dev"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "centralindia"
}

variable "acr_name" {
  description = "Globally unique Azure Container Registry name"
  type        = string
  default     = "acrazureshopkajal24"
}
variable "aks_name" {
  description = "Name of the Azure Kubernetes Service cluster"
  type        = string
  default     = "aks-azureshop-dev"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
  default     = "azureshop-dev"
}

variable "node_vm_size" {
  description = "VM size used by the AKS system node pool"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  type        = string
  default     = "law-azureshop-dev"
}