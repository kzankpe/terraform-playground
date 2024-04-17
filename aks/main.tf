resource "azurerm_resource_group" "this" {
  name     = var.rgname
  location = var.location
}

resource "azurerm_virtual_network" "this" {
  name                = var.vnetname
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  address_space       = ["10.10.0.0/16"]
}

resource "azurerm_subnet" "this" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = "10.10.0.0/24"
}

resource "azurerm_kubernetes_cluster" "this" {
  name                = var.aksname
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location

  identity {
    type = "SystemAssigned"
  }
  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = var.vm_size
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
    dns_service_ip = "172.16.0.10"
    service_cidr   = "172.16.0.0/16"
  }
}