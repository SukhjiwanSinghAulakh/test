vnet = {
  vnet1 = {
    name          = "jp_devops_vnet_hub"
    address_space = ["10.0.0.0/16"]
    location="japanwest"
    resource_group_name="jp_devops_rg_hub"
  }
  vnet2 = {
    name          = "jp_devops_vnet_spoke"
    address_space = ["10.1.0.0/16"]
    location="japaneast"
    resource_group_name="jp_devops_rg_spoke"
  }
}