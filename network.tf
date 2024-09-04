# resource "azurerm_subnet" "newsubnets" {
#   count = 2

#   name                 = "subnet-${count.index}"
#   resource_group_name  = data.azurerm_resource_group.vellabrg.name
#   virtual_network_name = data.azurerm_virtual_network.vellabvnet.name
#   address_prefixes     = [var.velsubnet[count.index]]
# }