output "resoure_group_out" {
    //value= azurerm_resource_group.myrg[each.name]
     value = azurerm_resource_group.myrg.name
}
     
