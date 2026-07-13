resource "azurerm_subnet" "subnet" {
    for_each = var.subnet
   name                 = each.value.name
   address_prefixes     = each.value.address_prefixes
   resource_group_name  = data.azurerm_virtual_network.dvnet[each.value.virtual_network].resource_group_name
   virtual_network_name =data.azurerm_virtual_network.dvnet[each.value.virtual_network].name
}