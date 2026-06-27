provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}

module "networking" {
  source = "./modules/networking"
}

module "compute" {
  source = "./modules/compute"
}

module "storage" {
  source = "./modules/storage"
}