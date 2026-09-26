variable "name" {}
variable "rg_name" {}
variable "location" {}

resource "azurerm_log_analytics_workspace" "law" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = "PerGB2018"
  retention_in_days   = 30

  tags = {
    environment = "dev"
    project     = "azure-avd-automation"
  }
}

output "id" {
  value = azurerm_log_analytics_workspace.law.id
}
