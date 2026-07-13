resource "azurerm_virtual_network" "vinet" {
    for_each = var.vnet
  name                = each.value.name
  address_space       = each.value.address_space # 
  location            = data.azurerm_resource_group.drm.location # using data block
  resource_group_name = data.azurerm_resource_group.drm.name # using data block
  
}