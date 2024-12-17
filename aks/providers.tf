terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.99.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "=4.0.6"
    }
    
  }
  backend "azurerm" {
    use_azuread_auth = true
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {

  }
  use_msi = true
}