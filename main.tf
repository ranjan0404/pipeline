terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"

    }
  }
}
provider "azurerm" {
  features {}
}
variable "RG" {}

resource "azurerm_resource_group" "RGblock" {
    for_each = toset(var.RG)
  name     = each.value
  location = "eastus"
}