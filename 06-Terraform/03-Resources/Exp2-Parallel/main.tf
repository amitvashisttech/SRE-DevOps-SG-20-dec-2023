# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "front" {
  count   = 1 
  name     = "Frontend-RG_${count.index}"
  location = "West Europe"

  tags = { 
    Owner = "Amit Vashist"
    Team  = "SRE"
  }
  
}



resource "azurerm_resource_group" "back" {
  count   = 1 
  name     = "Backend-RG_${count.index}"
  location = "West Europe"
  
  tags = { 
    Owner = "Amit Vashist"
    Team  = "SRE"
  }
}
