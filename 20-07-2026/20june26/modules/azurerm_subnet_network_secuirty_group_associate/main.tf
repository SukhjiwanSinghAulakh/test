resource "azurerm_subnet_network_security_group_association" "nsgacc" {
    for_each = var.subnetnsgasso
  subnet_id                 = data.azurerm_subnet.nic_subnets[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nic_security_g[each.key].id
}