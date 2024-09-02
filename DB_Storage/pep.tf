resource "azurerm_private_endpoint" "vellabpep" {
  location = var.location
  name = "vellabpep1"
  resource_group_name = azurerm_resource_group.labnetworkrg.name
  subnet_id = azurerm_subnet.labvnet1snets.id

private_service_connection {
  is_manual_connection = false
  name = "vellabpeppvtcon"
  private_connection_resource_id = azurerm_storage_account.velst.id
  subresource_names = ["blob"]
}


}