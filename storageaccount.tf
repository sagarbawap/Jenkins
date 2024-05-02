resource "azurerm_storage_account" "stgnew001" {
  name                     = "stgnew001"
  resource_group_name      = azurerm_resource_group.RG-Sagar.name
  location                 = azurerm_resource_group.RG-Sagar.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}