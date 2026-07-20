variable "subnetnsgasso" {
  type = map(object({
    subnet_name              = string
    vnet_name                = string
    vnet_resource_group_name = string
    nsg_name                 = string
    nsg_resource_group_name  = string
  }))
}