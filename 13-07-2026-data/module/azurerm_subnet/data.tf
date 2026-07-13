data "azurerm_virtual_network" "dvnet"{
for_each = var.vnets
name=each.value.name
resource_group_name=each.value.resource_group_name
}
