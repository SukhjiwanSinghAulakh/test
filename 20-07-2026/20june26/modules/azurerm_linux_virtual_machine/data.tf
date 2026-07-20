data "azurerm_network_interface" "vmlinux" {
  for_each = var.vmlinux
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}
