resource "azurerm_resource_group" "RG-vnet" {
  name     = "RG-Vnet"
  location = "West Europe"
}

resource "azurerm_network_security_group" "NSG" {
  name                = "NSG"
  location            = azurerm_resource_group.RG-vnet.location
  resource_group_name = azurerm_resource_group.RG-vnet.name
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet"
  location            = azurerm_resource_group.RG-vnet.location
  resource_group_name = azurerm_resource_group.RG-vnet.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
    security_group = azurerm_network_security_group.NSG.id
  }

  tags = {
    environment = "test"
  }
}