resource "azurerm_subnet" "AKSsubnet" {
    
    resource_group_name =  var.resource_group_name 
    name =  var.subnet_name
    virtual_network_name = var.VN_name
    address_prefixes =  var.address_prefix
    
  lifecycle {
    ignore_changes = [enforce_private_link_endpoint_network_policies]
  }
  
}


resource "azurerm_route_table" "rt" {
      name = var.rt_name
      location = var.location
      resource_group_name = var.resource_group_name
      disable_bgp_route_propagation = false
      
      route{
       name =  "myroute"
       address_prefix = "0.0.0.0/0"
       next_hop_type = "Internet"
         

      }

      
}

resource "azurerm_subnet_route_table_association" "aks_subnet_association" {
     subnet_id = azurerm_subnet.AKSsubnet.id
     route_table_id = azurerm_route_table.rt.id
}