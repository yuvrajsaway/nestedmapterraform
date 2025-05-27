resource "azurerm_subnet" "Virtualsubnet" {

  name                 = var.subnet_name
  resource_group_name  = var.rgname
  virtual_network_name = var.vnetname
  address_prefixes     = var.address_prefixes

}
