resource "azurerm_resource_group" "labnetworkrg" {
  name     = var.rgname
  location = var.location
}


resource "azurerm_virtual_network" "labvnet1" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.labnetworkrg.name
  location            = azurerm_resource_group.labnetworkrg.location
  address_space       = var.address_space

}

resource "azurerm_subnet" "labvnet1snets" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.labnetworkrg.name
  virtual_network_name = azurerm_virtual_network.labvnet1.name
  address_prefixes     = var.subnet_address_prefixes

}