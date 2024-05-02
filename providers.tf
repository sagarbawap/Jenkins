
# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
required_version = ">= 1.5.7"
backend "azurerm" {
  resource_group_name = "RG-Storge"
  storage_account_name = "stgsagar6262"
  container_name = "jenkinstfstate"
  key = "jenkinstfstate.tfstate"
  access_key = "JAtpZjLiIqm9jfsvhrY6agGeendKhnaF+zwUPQnEnRnn6jUxRghuIZpaz2n9U/k1mFlkScJeMF8C+AStzUEMpQ=="
}
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

}
data "azurerm_client_config" "current" {
  
}