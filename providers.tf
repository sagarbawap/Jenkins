
# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
required_version = ">= 1.5.7"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

}
data "azurerm_client_config" "current" {
  
}