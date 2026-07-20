data "azurerm_network_interface" "vmwin" {
  for_each = var.vmwin
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}
