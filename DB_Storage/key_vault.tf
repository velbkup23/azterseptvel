    # data "azurerm_client_config" "vellab" {
    
    # }

    # # Define the Key Vault
    # resource "azurerm_key_vault" "vellab" {
    # name                = "vellab-keyvault"
    # resource_group_name = azurerm_resource_group.labnetworkrg.name
    # location            = azurerm_resource_group.labnetworkrg.location
    # sku_name            = "standard"
    # tenant_id           = data.azurerm_client_config.vellab.tenant_id
    # access_policy {
    #     tenant_id = data.azurerm_client_config.vellab.tenant_id
    #     object_id = data.azurerm_client_config.vellab.object_id

    #     key_permissions = [
    #     "Get",
    #     "List",
    #     "Create",
    #     "Import",
    #     "Delete",
    #     "Update",
    #             ]
    # }
    # }

    # # Define the Key Vault key
    # resource "azurerm_key_vault_key" "vellab" {
    # name         = "vellab-key"
    # key_vault_id = azurerm_key_vault.vellab.id
    # key_type     = "RSA"
    # key_size     = 2048
    # key_opts = [ 
    #     "encrypt",
    #     "decrypt",
    #     "sign",
    #     "verify",
    #     "wrapKey",
    #     "unwrapKey"
    # ]
    # }
