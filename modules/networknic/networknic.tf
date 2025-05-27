resource "azurerm_network_interface" "networknic" {
  name                = var.nicname
  location            = var.rgloation
  resource_group_name = var.rgname

  ip_configuration {
    name                          = "internal"
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}
