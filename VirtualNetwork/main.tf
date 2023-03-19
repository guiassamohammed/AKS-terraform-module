
resource "azurerm_virtual_network" "myvn" {
    
    name= var.name
    location = var.location
    resource_group_name = var.resource
    address_space = var.address_space

}



