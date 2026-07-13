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