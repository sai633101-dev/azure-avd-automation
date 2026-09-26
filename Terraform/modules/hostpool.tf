variable "name" {}
variable "rg_name" {}
variable "location" {}

resource "azurerm_virtual_desktop_host_pool" "hostpool" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  type                = "Pooled"
  load_balancer_type  = "BreadthFirst"
  friendly_name       = "AVD Host Pool"
}

output "id" {
  value = azurerm_virtual_desktop_host_pool.hostpool.id
}
