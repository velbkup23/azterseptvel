resource "azurerm_storage_account" "storage3x" {
  for_each = { for idx, stg in local.ste_dets : idx => stg }

  resource_group_name      = data.azurerm_resource_group.vellabrg.name
  location                 = data.azurerm_resource_group.vellabrg.location
  name                     = each.value.name
  account_replication_type = each.value.account_replication_type
  account_tier             = each.value.account_tier != null ? each.value.account_tier : "Standard"
  account_kind             = each.value.account_kind


}

resource "azurerm_private_endpoint" "storagepeps" {
  for_each = { for idx, v in local.ste_pep : idx => v }

  name                = format("stpep%s%s", each.key, each.value.name)
  resource_group_name = data.azurerm_resource_group.vellabrg.name
  location            = data.azurerm_resource_group.vellabrg.location
  subnet_id           = data.azurerm_subnet.vellabsubnet.id

  private_service_connection {
    name                           = format("stpeppsc%s%s", each.key, each.value.name)
    private_connection_resource_id = azurerm_storage_account.storage3x[each.key].id
    is_manual_connection           = false
    subresource_names              = [each.value.sub_resources]
  }
}