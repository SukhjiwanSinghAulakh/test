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
        location="japanwest"
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
        name                       = "nsg-rule"
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
        }
        rule2 = { 
        name                       = "nsg-rule"
        priority                   = 200
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
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
                    name                       = "nsg-rule"
                    priority                   = 100
                    direction                  = "Inbound"
                    access                     = "Allow"
                    protocol                   = "Tcp"
                    source_port_range          = "*"
                    destination_port_range     = "80"
                    source_address_prefix      = "*"
                    destination_address_prefix = "*"
                    }
                rule2 = { 
                    name                       = "nsg-rule"
                    priority                   = 200
                    direction                  = "Inbound"
                    access                     = "Allow"
                    protocol                   = "Tcp"
                    source_port_range          = "*"
                    destination_port_range     = "22"
                    source_address_prefix      = "*"
                    destination_address_prefix = "*"
                    }
                }
            }
        
}