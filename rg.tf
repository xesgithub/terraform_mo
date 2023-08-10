resource "azurerm_resource_group" "Resourcegroup" {
  name     = "rg-adl-osr-mo"
  location = "japaneast"
  tags = var.tag_momoon
}