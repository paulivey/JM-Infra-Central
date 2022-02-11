# Resource group
data "azurerm_resource_group" "rg" {
    name = var.sta_rg_name
}
