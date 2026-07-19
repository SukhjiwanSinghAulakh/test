nic = {
  nic1 = {
    name                = "nic1"
    location            = "japaneast"
    resource_group_name = "dev-spoke-japaneast"
    ip_configuration = {
      name      = "ipconfiguration1"
      subnet_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japaneast/subnets/dev-frontend-subnet"
      ##private_ip_address_allocation = "Dynamic"
    }
  }
  nic2 = {
    name                = "nic2"
    location            = "japanwest"
    resource_group_name = "dev-spoke-japanwest"
    ip_configuration = {
      name      = "ipconfiguration2"
      subnet_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japanwest/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japanwest/subnets/dev-frontend-subnet"
      ##private_ip_address_allocation = "Dynamic"
    }
  }
}