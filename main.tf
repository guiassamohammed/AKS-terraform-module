terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.88.1"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

module "ResourceGroup" {
  source = "./ResourceGroup"
  name = "myrgmodule"
  location = "West Europe"
     //tags= "Production"
   
    
}

module "VirtualNetwork" {
  source = "./VirtualNetwork"
  name = "myAKSvn"
  resource = module.ResourceGroup.resoure_group_out
  location="West Europe"
  address_space= ["10.0.0.0/12"]
   
}

module "subnet" {
  source = "./subnet"
  subnet_name = "myAKSsubnet"
  resource_group_name = module.ResourceGroup.resoure_group_out
  address_prefix= ["10.1.0.0/16"]
  VN_name= module.VirtualNetwork.myvnet
  rt_name = "myrtname"
  location= "West Europe"
 
}


module "AKS" {
  source = "./AKS"
  AKS_name = "myAKS"
  location="West Europe"
  resource_group_name = module.ResourceGroup.resoure_group_out
  vnet_subnet_id = module.subnet.id

}

