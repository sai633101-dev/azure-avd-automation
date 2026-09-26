variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region for deployment"
  default     = "eastus"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
}

variable "subnet_name" {
  description = "Name of the Subnet"
}

variable "hostpool_name" {
  description = "Name of the AVD Host Pool"
}

variable "workspace_name" {
  description = "Name of the AVD Workspace"
}

variable "application_group_name" {
  description = "Name of the AVD Application Group"
}

variable "vm_size" {
  description = "Size of the session host VM"
  default     = "Standard_B1s"
}

variable "storage_account_name" {
  description = "Name of the Storage Account"
}

variable "keyvault_name" {
  description = "Name of the Key Vault"
}

variable "log_analytics_name" {
  description = "Name of the Log Analytics Workspace"
}
