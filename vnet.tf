#     1. create Virtual Network
resource "azurerm_virtual_network" "vnet-rg-adl-osr-mo-lad" {
  name                = "vnet-common-mo-lad"
  resource_group_name = azurerm_resource_group.Resourcegroup.name
  location            = azurerm_resource_group.Resourcegroup.location
  address_space       = ["172.19.42.0/24"]
  #  dns_servers         = ["8.8.8.8"] config dns_server on vnet effect to virtual manchine
  tags = var.tag_momoon
}

#     2. create  Subnet
resource "azurerm_subnet" "subnet-adl-common-mo-lad-vm" {
  name                 = "subnet-adl-common-mo-lad-vm"
  virtual_network_name = azurerm_virtual_network.vnet-rg-adl-osr-mo-lad.name
  resource_group_name  = azurerm_resource_group.Resourcegroup.name
  address_prefixes     = ["172.19.42.0/28"]
  depends_on = [ azurerm_virtual_network.vnet-rg-adl-osr-mo-lad ]
}

resource "azurerm_subnet" "subnet-adl-common-mo-lad-storage" {
  name                 = "subnet-adl-common-mo-lad-storage"
  virtual_network_name = azurerm_virtual_network.vnet-rg-adl-osr-mo-lad.name
  resource_group_name  = azurerm_resource_group.Resourcegroup.name
  address_prefixes     = ["172.19.42.16/28"]
  depends_on = [ azurerm_virtual_network.vnet-rg-adl-osr-mo-lad ]
}