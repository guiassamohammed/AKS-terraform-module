resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.AKS_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.AKS_name

  
  network_profile {
    network_plugin = "azure"
  }

  default_node_pool {
      name = "sysnodepool"
      node_count= 1
      vm_size = "Standard_DS2_v2"
      max_pods = 100
      type = "VirtualMachineScaleSets"
      vnet_subnet_id = var.vnet_subnet_id

    }
    

  identity {
    type = "SystemAssigned"
    }

  
}

