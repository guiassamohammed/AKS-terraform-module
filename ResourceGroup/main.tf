resource "azurerm_resource_group" "myrg" {
    name = var.name
    location = var.location
    //tags = each.value.tags
  
}