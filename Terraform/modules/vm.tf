variable "rg_name" {}
variable "location" {}
variable "size" {}
variable "subnet_id" {}

resource "azurerm_network_interface" "nic" {
  name                = "avd-nic"
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm" {
  name                  = "avd-sessionhost"
  resource_group_name   = var.rg_name
  location              = var.location
  size                  = var.size
  admin_username        = "azureuser"
  admin_password        = "P@ssword123!"
  network_interface_ids = [azurerm_network_interface.nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "windows-11"
    sku       = "win11-22h2-avd"
    version   = "latest"
  }
}

output "ids" {
  value = [azurerm_windows_virtual_machine.vm.id]
}
