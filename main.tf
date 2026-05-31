terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source              = "./modules/azurerm_resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "virtual_network" {
  source                = "./modules/azurerm_virtual_network"
  virtual_network_name  = var.virtual_network_name
  resource_group_name   = module.resource_group.resource_group_name
  location              = var.location
  address_space         = var.address_space
}

module "subnet" {
  source               = "./modules/azurerm_subnet"
  subnet_name          = var.subnet_name
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefix       = var.subnet_address_prefix
}

module "storage_account" {
  source               = "./modules/azurerm_storage_account"
  storage_account_name = var.storage_account_name
  resource_group_name  = module.resource_group.resource_group_name
  location             = var.location
}
