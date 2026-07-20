resource "azurerm_public_ip" "pip" {
  for_each            = var.pip
  name                = "${var.prefix}-${each.value.public_ip_name}-${each.value.location}"
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
}