module "rg" {
  source = "../../modules/azurerm_resource_group"
  resource_group = var.resource_group
  prefix = var.prefix
}
module "vnet" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_virtual_network"
    Vnet = var.Vnet
    prefix = var.prefix
}
module "subnet" {
  source = "../../modules/azurerm_subnet"
  
  prefix = var.prefix
  subnet = var.subnet
}
module "nsg" {
  depends_on = [ module.subnet ]
  source = "../../modules/azurerm_network_group_security"
  prefix=var.prefix
  nsg = var.nsg
}