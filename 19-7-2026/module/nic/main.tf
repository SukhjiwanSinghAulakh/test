resource "azurerm_network_interface" "cnic" {
  for_each            = var.nic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = data.azurerm_subnet.dsubnet.name
    subnet_id                     = data.azurerm_subnet.dsubnet.id
    private_ip_address_allocation = "Dynamic"

  }
}