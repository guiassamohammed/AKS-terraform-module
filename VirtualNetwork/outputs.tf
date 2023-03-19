output "myvnet" {
    //value= azurerm_resource_group.myrg[each.name]
     value = azurerm_virtual_network.myvn.name
}
     

