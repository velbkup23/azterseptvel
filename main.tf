terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d0d8f67e-03af-4af0-af31-c4982f260681"
  tenant_id       = "db991953-dbb3-404c-bfa8-9b17e1ae1d3a"
}

data "azurerm_client_config" "veltest" {

}

data "azurerm_resource_group" "vellabrg" {
  name = "Vellab"
}

data "azurerm_virtual_network" "vellabvnet" {
  name                = "vellabvnet"
  resource_group_name = data.azurerm_resource_group.vellabrg.name
}

data "azurerm_subnet" "vellabsubnet" {
  name                 = "default"
  resource_group_name  = data.azurerm_resource_group.vellabrg.name
  virtual_network_name = data.azurerm_virtual_network.vellabvnet.name
}