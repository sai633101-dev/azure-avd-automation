variable "name" {}
variable "rg_name" {}
variable "location" {}

resource "azurerm_virtual_desktop_workspace" "workspace" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  friendly_name       = "AVD Workspace"
}

output "id" {
  value = azurerm_virtual_desktop_workspace.workspace.id
}
