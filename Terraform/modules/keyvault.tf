variable "name" {}
variable "rg_name" {}
variable "location" {}

resource "azurerm_key_vault" "kv" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.rg_name
  tenant_id                   = "00000000-0000-0000-0000-000000000000" # replace with actual tenant
  sku_name                    = "standard"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  access_policy {
    tenant_id = "00000000-0000-0000-0000-000000000000"
    object_id = "00000000-0000-0000-0000-000000000000" # replace with SPN object ID
    key_permissions    = ["get", "list"]
    secret_permissions = ["get", "list", "set"]
  }

  tags = {
    environment = "dev"
    project     = "azure-avd-automation"
  }
}

output "id" {
  value = azurerm_key_vault.kv.id
}
