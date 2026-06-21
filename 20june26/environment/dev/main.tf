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
  depends_on = [ module.rg,module.vnet ]
  source = "../../modules/azurerm_subnet"
  prefix = var.prefix
  subnet = var.subnet
 }
module "nsg" {
  depends_on = [ module.subnet,module.rg,module.vnet ]
  source = "../../modules/azurerm_network_group_security"
  prefix=var.prefix
  nsg = var.nsg
 }
module "subnsg" {
  depends_on = [module.rg,module.vnet,module.subnet,module.nsg]
  source = "../../modules/azurerm_subnet_network_secuirty_group_associate"
  subnetnsgasso=var.subnetnsgasso
 }
module "nic" {
  depends_on = [ module.rg,module.vnet,module.subnet ]
  source = "../../modules/azurerm_network_interface_card"
  nic = var.nic
  prefix = var.prefix
 }
module "vmlinux" {
  depends_on = [ module.rg,module.vnet,module.subnet,module.nic,module.nsg ]
  source = "../../modules/azurerm_linux_virtual_machine"
  prefix = var.prefix
  vmlinux=var.vmlinux
 }
module "vwin" {
  depends_on = [ module.rg,module.vnet,module.subnet,module.nic,module.nsg ]
  source ="../../modules/azurerm_window_virtual_machine"
  prefix = var.prefix
  vmwin = var.vmwin
  }
module "pip" {
  depends_on = [ module.subnet,module.rg,module.vnet ,module.nsg]
   source = "../../modules/azurerm_public_ip"
 prefix = var.prefix
 pip = var.pip
 }
module"bhost"{
  depends_on = [ module.rg,module.vnet,module.subnet,module.vmlinux,module.vwin,module.nsg ,module.pip]
  source = "../../modules/azurerm_bastion"
  prefix = var.prefix
  bhost_name = var.bhost_name
  } 
module"peering"{
  depends_on = [ module.rg,module.vnet,module.subnet,module.vmlinux,module.vwin,module.nsg ,module.pip,module.bhost]
  source = "../../modules/azurerm_virtual_network_peering"
  prefix = var.prefix
  vnet_peering=var.vnet_peering
} 
