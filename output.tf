output "tenantid" {
  value = data.azurerm_client_config.veltest.tenant_id
}

output "clientid" {
  value = data.azurerm_client_config.veltest.client_id
}

output "objectid" {
  value = data.azurerm_client_config.veltest.object_id
}

output "storageid1" {
  value = { for ste in azurerm_storage_account.storage3x : ste.name => ste.id }
}