resource "azurerm_resource_group" "rg" {
    for_each=var.rg
    name=each.key
    location=each.value
}