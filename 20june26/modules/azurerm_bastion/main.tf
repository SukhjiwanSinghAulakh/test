resource "azurerm_bastion_host" "bhost" {
  for_each            = var.bhost_name
   name               = "${var.prefix}-${each.value.name}-${each.value.location}"  
   location            = each.value.location
   resource_group_name = each.value.resource_group_name
  ip_configuration {
    name                 = each.value.ip_configuration.name
    subnet_id            = each.value.ip_configuration.subnet_id
    public_ip_address_id = each.value.ip_configuration.public_ip_address_id
  }
}