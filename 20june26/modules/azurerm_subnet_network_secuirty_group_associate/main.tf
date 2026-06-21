resource "azurerm_subnet_network_security_group_association" "nsgacc" {
    for_each = var.subnetnsgasso
  subnet_id                 = each.value.subnet_id 
  network_security_group_id = each.value.network_security_group_id
}