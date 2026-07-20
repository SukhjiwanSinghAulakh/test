data "azurerm_subnet" "nic_subnets" {
  for_each = var.nic
  name                 = each.value.ip_configuration.subnet_name
  virtual_network_name = each.value.ip_configuration.vnet_name
  resource_group_name  = each.value.ip_configuration.vnet_resource_group_name
}