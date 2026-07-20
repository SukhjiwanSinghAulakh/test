resource "azurerm_network_interface" "cnic" {
  for_each            = var.nic
  name                = "${var.prefix}-${each.value.name}-${each.value.location}"
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ip_configuration.name
    subnet_id                     = data.azurerm_subnet.nic_subnets[each.key].id
    ##subnet_id                     = each.value.ip_configuration.subnet_id
    private_ip_address_allocation = each.value.ip_configuration.private_ip_address_allocation

  }
}