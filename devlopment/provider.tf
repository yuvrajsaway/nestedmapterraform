terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.30.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "52f0f33a-bdec-47ad-b5b8-439147bafca4"

}
