provider "azurerm" {
  version = "2.0.0"
  features {}
}

module "resource_group" {
  source   = "./modules/resgrp"
  
  tags = {
    Environment = "test"
  }
  
}
