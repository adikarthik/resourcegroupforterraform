terraform { 
  cloud { 
    
    organization = "akg31" 

    workspaces { 
      name = "localfile" 
    } 
  } 
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}
tenant_id="66573a45-6f85-4878-bebc-e0bc24647836"
subscription_id="5d1b700e-5c37-4a48-a430-e148b56e5404"
client_secret="PD48Q~IcqNz63VqrTNQKhRMQtejI49K0pG4V1aoR"
client_id="765f97a9-6831-48a7-9c54-7c8b76af5375"
}
variable "rgname" {
  default = "teraformrg123"
}
variable "location" {
  default = "West US 2"
}
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}
