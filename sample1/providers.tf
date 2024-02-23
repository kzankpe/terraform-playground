terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.92.0"
    }

  }

  backend "azurerm" {

  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
  use_msi = true
}