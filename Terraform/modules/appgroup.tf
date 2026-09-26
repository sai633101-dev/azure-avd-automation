variable "name" {}
variable "rg_name" {}
variable "location" {}
variable "hostpool_id" {}

resource "azurerm_virtual_desktop_application_group" "appgroup" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  host_pool_id        = var.hostpool_id
  type                = "Desktop"
  friendly_name       = "AVD App Group"
}

output "id" {
  value = azurerm_virtual_desktop_application_group.appgroup.id
}
