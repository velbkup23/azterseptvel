vellabstact = [{
  name                     = "azterseptvel"
  account_kind             = "BlobStorage"
  account_replication_type = "LRS"
  config_pep               = true
  sub_resources            = "blob"


  },

  {
    name                     = "azterseptguhan"
    account_kind             = "FileStorage"
    account_replication_type = "ZRS"
    account_tier             = "Premium"
    config_pep               = true
    sub_resources            = "file"
  },

  {
    name                     = "azterseptshan"
    account_replication_type = "GRS"
    config_pep               = false
    sub_resources            = "blob"
}]