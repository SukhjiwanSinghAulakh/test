nsg = {
  frontendnsg = {
    name                = "frontendnsg-spoke"
    location            = "japaneast"
    resource_group_name = "jp_devops_rg_spoke"
    security_rule = {
      rule1 = {
        name                       = "nsg-rule1"
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "10.0.4.0/24"
        destination_address_prefix = "*"
      }
      rule2 = {
        name                       = "nsg-rule2"
        priority                   = 200
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "10.0.4.0/24"
        destination_address_prefix = "*"
      }
      rule3 = {
        name                       = "nsg-rule3"
        priority                   = 201
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "10.0.3.0/24"
        destination_address_prefix = "*"
      }
    }
  }
  backendnsg = {
    name                = "backendnsg-spoke"
    location            = "japaneast"
    resource_group_name = "jp_devops_rg_spoke"
    security_rule = {
      rule1 = {
        name                       = "nsg-rule1"
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "10.0.4.0/24"
        destination_address_prefix = "*"
      }
      rule2 = {
        name                       = "nsg-rule2"
        priority                   = 200
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "10.0.4.0/24"
        destination_address_prefix = "*"
      }
      rule3 = {
        name                       = "nsg-rule3"
        priority                   = 201
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "10.0.4.0/24"
        destination_address_prefix = "*"
      }
    }
  }
  # nsg3={
  #             name="nsg-hub"
  #             location = "japanwest"
  #             resource_group_name = "dev-hub-japanwest" 
  #             security_rule ={
  #             rule1 = { 
  #                 name                       = "nsg-rule1"
  #                 priority                   = 100
  #                 direction                  = "Inbound"
  #                 access                     = "Allow"
  #                 protocol                   = "Tcp"
  #                 source_port_range          = "*"
  #                 destination_port_range     = "*"
  #                 source_address_prefix      = "*"
  #                 destination_address_prefix = "*"
  #                 }                                               
  #             }
  #         }

}
