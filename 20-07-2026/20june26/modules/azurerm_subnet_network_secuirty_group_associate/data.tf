data "azurerm_subnet" "nic_subnets" {
  for_each = var.subnetnsgasso
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.vnet_resource_group_name
}
data "azurerm_network_security_group" "nic_security_g" {
  for_each = var.subnetnsgasso
  name=each.value.nsg_name
  resource_group_name  = each.value.vnet_resource_group_name
}