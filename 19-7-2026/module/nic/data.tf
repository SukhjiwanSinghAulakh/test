data "azurerm_subnet" "dsubnet" {
  name                 = "FrontendSubnet"
  resource_group_name  = "jp_devops_rg_spoke"
  virtual_network_name = "jp_devops_vnet_spoke"
}