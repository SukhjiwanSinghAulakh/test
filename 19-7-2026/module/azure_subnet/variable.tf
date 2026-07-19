variable "subnet" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_group = string
    address_prefixes     = list(string)
    }

    )
  )
}