resource "azurerm_storage_account" "velst" {
  name                            = "azterseptvel2301"
  resource_group_name             = azurerm_resource_group.labnetworkrg.name
  location                        = var.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  account_kind                    = "StorageV2"
  min_tls_version                 = "TLS1_2"
  https_traffic_only_enabled      = "true"
  # allow_nested_items_to_be_public = "false"
  # shared_access_key_enabled       = "false"
  # default_to_oauth_authentication = "true"
  public_network_access_enabled   = "false"


}