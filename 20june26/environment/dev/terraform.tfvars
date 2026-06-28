prefix = "dev"
resource_group = {
    rg1={
        name="hub"
        location="japanwest"
    }
    rg2={
        name="spoke"
        location="japaneast"
    }
    rg={
        name="spoke"
        location="japanwest"  ###
    }
 }
Vnet = {
    vnet1={
        name="vnet-hub"
        location="japanwest"
        resource_group_name="dev-hub-japanwest"
        address_space=["10.0.0.0/16"]
    }
    vnet2={name="vnet-spoke"
        location="japaneast"
        resource_group_name="dev-spoke-japaneast"
        address_space=["10.1.0.0/16"]
    }
    vnet3={
        name="vnet-spoke"
        location="japanwest"
        resource_group_name="dev-spoke-japanwest"
        address_space=["10.2.0.0/16"]
    }
 }
subnet = {
    subnet1={
        name="frontend-subnet"
        resource_group_name="dev-spoke-japanwest"
        virtual_network_name="dev-vnet-spoke-japanwest"
        address_prefixes=["10.2.1.0/24"]    
    }
    subnet2={
         name="backend-subnet"
        resource_group_name="dev-spoke-japanwest"
        virtual_network_name="dev-vnet-spoke-japanwest"
        address_prefixes=["10.2.2.0/24"]    
    }
    subnet3={
         name="database-subnet"
        resource_group_name="dev-spoke-japanwest"
        virtual_network_name="dev-vnet-spoke-japanwest"
        address_prefixes=["10.2.3.0/24"]    
    
    }
    bastion={
        name="AzureBastionSubnet"
        resource_group_name="dev-hub-japanwest"
        virtual_network_name="dev-vnet-hub-japanwest"
        address_prefixes=["10.0.1.0/24"]
    }
    subnet4={
        name="frontend-subnet"
        resource_group_name="dev-spoke-japaneast"
        virtual_network_name="dev-vnet-spoke-japaneast"
        address_prefixes=["10.1.1.0/24"]    
    }
    subnet5={
         name="backend-subnet"
        resource_group_name="dev-spoke-japaneast"
        virtual_network_name="dev-vnet-spoke-japaneast"
        address_prefixes=["10.1.2.0/24"]    
    }
    subnet6={
         name="database-subnet"
        resource_group_name="dev-spoke-japaneast"
        virtual_network_name="dev-vnet-spoke-japaneast"
        address_prefixes=["10.1.3.0/24"]    
    
    }
    
 }
nsg = {
    nsg1={
        name="nsg-spoke"
        location = "japanwest"
        resource_group_name = "dev-spoke-japanwest"
        security_rule ={
        rule1 = { 
        name                       = "nsg-rule1"
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range = "22"
        source_address_prefix      = "10.0.1.0/24"
        destination_address_prefix = "*"
        }
        rule2 = { 
        name                       = "nsg-rule2"
        priority                   = 200
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "10.0.1.0/24"
        destination_address_prefix = "*"
        }        
        rule3 = { 
        name                       = "nsg-rule3"
        priority                   = 201
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
        }
        }
     }
    nsg2={
                name="nsg-spoke"
                location = "japaneast"
                resource_group_name = "dev-spoke-japaneast" 
                security_rule ={
                rule1 = { 
                    name                       = "nsg-rule1"
                    priority                   = 100
                    direction                  = "Inbound"
                    access                     = "Allow"
                    protocol                   = "Tcp"
                    source_port_range          = "*"
                    destination_port_range = "22"
                    source_address_prefix      = "10.0.1.0/24"
                    destination_address_prefix = "*"
                    }                 
                    rule2 = { 
                    name                       = "nsg-rule2"
                    priority                   = 200
                    direction                  = "Inbound"
                    access                     = "Allow"
                    protocol                   = "Tcp"
                    source_port_range          = "*"
                    destination_port_range     = "3389"
                    source_address_prefix      = "10.0.1.0/24"
                    destination_address_prefix = "*"
                    }
                     rule3 = { 
                    name                       = "nsg-rule3"
                    priority                   = 201
                    direction                  = "Inbound"
                    access                     = "Allow"
                    protocol                   = "Tcp"
                    source_port_range          = "*"
                    destination_port_range     = "80"
                    source_address_prefix      = "*"
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
subnetnsgasso = {
    subass1={
        subnet_id                 = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japaneast/subnets/dev-frontend-subnet"
        network_security_group_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/networkSecurityGroups/dev-nsg-spoke-japaneast"
        }
    subass2={
        subnet_id                 = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japaneast/subnets/dev-backend-subnet"
        network_security_group_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/networkSecurityGroups/dev-nsg-spoke-japaneast"
     }    
    subass3={
        subnet_id                 = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japaneast/subnets/dev-database-subnet"
        network_security_group_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/networkSecurityGroups/dev-nsg-spoke-japaneast"
      }    
    subass4={
        subnet_id                 = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japanwest/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japanwest/subnets/dev-frontend-subnet"
        network_security_group_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japanwest/providers/Microsoft.Network/networkSecurityGroups/dev-nsg-spoke-japanwest"
     }
    subass5={
        subnet_id                 = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japanwest/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japanwest/subnets/dev-backend-subnet"
        network_security_group_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japanwest/providers/Microsoft.Network/networkSecurityGroups/dev-nsg-spoke-japanwest"
     }
    subass6={
        subnet_id                 = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japanwest/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japanwest/subnets/dev-database-subnet"
        network_security_group_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japanwest/providers/Microsoft.Network/networkSecurityGroups/dev-nsg-spoke-japanwest"
     }
    # subbashtion={
    #     subnet_id                 = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-hub-japanwest/providers/Microsoft.Network/virtualNetworks/dev-vnet-hub-japanwest/subnets/AzureBastionSubnet"
    #     network_security_group_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-hub-japanwest/providers/Microsoft.Network/networkSecurityGroups/dev-nsg-hub-japanwest"
    #    }
      }
nic = {
  nic1 = {
    name                = "nic1"
    location            = "japaneast"
    resource_group_name = "dev-spoke-japaneast"
    ip_configuration = {
      name                          = "ipconfiguration1"
      subnet_id                     = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japaneast/subnets/dev-frontend-subnet"
      private_ip_address_allocation = "Dynamic"
    }
  }
  nic2 = {
      name                = "nic2"
      location            = "japanwest"
      resource_group_name = "dev-spoke-japanwest"
      ip_configuration = {
        name                          = "ipconfiguration2"
        subnet_id                     =  "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japanwest/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japanwest/subnets/dev-frontend-subnet"
        private_ip_address_allocation = "Dynamic"
      }
  nic3= {
    name                = "nic3"
    location            = "japaneast"
    resource_group_name = "dev-spoke-japaneast"
    ip_configuration = {
      name                          = "ipconfiguration3"
      subnet_id                     = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japaneast/subnets/dev-frontend-subnet"
      private_ip_address_allocation = "Dynamic"
    }
   }
  }

vmlinux = {
  vmlinux1 = {
    name                            = "linux-machine"
    resource_group_name             = "dev-spoke-japaneast"
    location                        = "japaneast"
    size = "Standard_D2s_v3"
    admin_username                  = "adminuser"
    admin_password                  = "P@$$w0rd1234!"
    disable_password_authentication = false

    network_interface_ids = ["/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/networkInterfaces/dev-nic1-japaneast"]

    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
   }
   vmlinux2 = {
    name                            = "linux2machine"
    resource_group_name             = "dev-spoke-japaneast"
    location                        = "japaneast"
    size = "Standard_D2s_v3"
    admin_username                  = "adminuser"
    admin_password                  = "P@$$w0rd1234!"
    disable_password_authentication = false

    network_interface_ids = ["/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/networkInterfaces/dev-nic3-japaneast"]

    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
 }

 }
bhost_name = {
  bhost1 = {
    name                = "bhost1"
    location            = "japanwest"
    resource_group_name = "dev-hub-japanwest"
    ip_configuration = {
      name                 = "ipconfig1"
      subnet_id            = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-hub-japanwest/providers/Microsoft.Network/virtualNetworks/dev-vnet-hub-japanwest/subnets/AzureBastionSubnet"
      public_ip_address_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-hub-japanwest/providers/Microsoft.Network/publicIPAddresses/dev-pip-nic1-japanwest"
    }
   }
  }
pip = {
  pip1 = {
    public_ip_name      = "pip-nic1"
    location            = "japanwest"
    resource_group_name = "dev-hub-japanwest"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
  # pip2 = {
  #   public_ip_name      = "pip-nic2"
  #   location            = "japaneast"
  #   resource_group_name = "dev-hub-japaneast"
  #   allocation_method   = "Static"
  #   sku                 = "Standard"
  # }
 }  
vnet_peering={
  vnet_peering1={
  name                      = "vnet_peering_hub_spoke1"
  resource_group_name       = "dev-hub-japanwest"
  virtual_network_name      ="dev-vnet-hub-japanwest"
  remote_virtual_network_id ="/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japaneast/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japaneast"
  }
  vnet_peering2={
  name                      = "vnet_peering_Hub_spoke2"
  resource_group_name       = "dev-hub-japanwest"
  virtual_network_name      = "dev-vnet-hub-japanwest"
  remote_virtual_network_id ="/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-spoke-japanwest/providers/Microsoft.Network/virtualNetworks/dev-vnet-spoke-japanwest"
  }
 }