 vnets={
          vnet1={
          name="vnet1"
          resource_group_name="rg1"
          }
          vnet2={
          name="vnet2"
          resource_group_name="rg1"
          }
 }
 subnet={
    subnet1={
        name="subnet1"
        address_prefixes=["10.0.1.0/24"]
        virtual_network    = "vnet1"
      
    }
    subnet2={
        name="subnet2"
        address_prefixes=["10.1.2.0/24"]
        virtual_network    = "vnet2"
       
    }
 }