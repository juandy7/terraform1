provider "azurerm" {
  subscription_id = "fe2209f4-c434-4a75-bdf3-ea45b7b93ae5"
  features {}
}


resource "azurerm_resource_group" "labTerra" {
  name     = "labTerra"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "labTerra" {
  name                = "Juan_terraform"
  location            = azurerm_resource_group.labTerra.location
  resource_group_name = azurerm_resource_group.labTerra.name
  dns_prefix          = "jdrc01"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.labTerra.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.labTerra.kube_config_raw

  sensitive = true
}
