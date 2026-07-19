subnet = {
  subnet1 = {
    name                  = "GatewaySubnet"
    resource_group_name   = "jp_devops_rg_hub"
    virtual_network_group = "jp_devops_vnet_hub"
    address_prefixes      = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                  = "jAzureFirewallSubnet"
    resource_group_name   = "jp_devops_rg_hub"
    virtual_network_group = "jp_devops_vnet_hub"
    address_prefixes      = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                  = "AzureBastionSubnet"
    resource_group_name   = "jp_devops_rg_hub"
    virtual_network_group = "jp_devops_vnet_hub"
    address_prefixes      = ["10.0.3.0/24"]

  }
  subnet4 = {
    name                  = "APPGatewaySubnet"
    resource_group_name   = "jp_devops_rg_hub"
    virtual_network_group = "jp_devops_vnet_hub"
    address_prefixes      = ["10.0.4.0/24"]

  }
  subnet9 = {
    name                  = "Private_Endpoint_Subnet"
    resource_group_name   = "jp_devops_rg_hub"
    virtual_network_group = "jp_devops_vnet_hub"
    address_prefixes      = ["10.0.5.0/24"]

  }
  subnet5 = {
    name                  = "FrontendSubnet"
    resource_group_name   = "jp_devops_rg_spoke"
    virtual_network_group = "jp_devops_vnet_spoke"
    address_prefixes      = ["10.1.1.0/24"]
  }
  subnet6 = {
    name                  = "backendSubnet"
    resource_group_name   = "jp_devops_rg_spoke"
    virtual_network_group = "jp_devops_vnet_spoke"
    address_prefixes      = ["10.1.2.0/24"]
  }
  subnet7 = {
    name                  = "databaseSubnet"
    resource_group_name   = "jp_devops_rg_spoke"
    virtual_network_group = "jp_devops_vnet_spoke"
    address_prefixes      = ["10.1.3.0/24"]

  }
  subnet8 = {
    name                  = "NSGSubnet"
    resource_group_name   = "jp_devops_rg_spoke"
    virtual_network_group = "jp_devops_vnet_spoke"
    address_prefixes      = ["10.1.4.0/24"]

  }
}