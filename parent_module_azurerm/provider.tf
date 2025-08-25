terraform {
 backend "azurerm" {
    resource_group_name  = "sunnypapa"
    # storage_account_name = "ravan"
    # container_name       = "container"
    # key                  = "prod.terraform.tfstate"
  

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  }


provider "azurerm" {
  features {}
  subscription_id = "5fbead97-423e-4814-809c-114db991d911"
}
