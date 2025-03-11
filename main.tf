terraform { 
  cloud { 
    
    organization = "vmoseng_certs" 

    workspaces { 
      name = "azure-state-container" 
    } 
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.21.1"
    }
  } 
}

provider "azurerm" {
  features {}
}