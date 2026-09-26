variable "name" {}
variable "rg_name" {}
variable "location" {}

resource "azurerm_storage_account" "storage" {
  name                     = var.name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
    project     = "azure-avd-automation"
  }
}

output "id" {
  value = azurerm_storage_account.storage.id
}
