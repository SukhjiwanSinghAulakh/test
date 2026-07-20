resource "azurerm_virtual_network" "vnet" {
    for_each = var.Vnet
    name = "${var.prefix}-${each.value.name}-${each.value.location}"
    location=each.value.location
    resource_group_name=each.value.resource_group_name
    address_space=each.value.address_space
}