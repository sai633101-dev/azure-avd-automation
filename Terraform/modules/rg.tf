variable "name" {
  description = "Name of the Resource Group"
}

variable "location" {
  description = "Azure region"
}

resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
  tags = {
    environment = "dev"
    project     = "azure-avd-automation"
  }
}

output "name" {
  value = azurerm_resource_group.rg.name
}
