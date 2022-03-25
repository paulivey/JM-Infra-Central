# Network resource group
data "azurerm_resource_group" "netrg" {
    name = var.network_rg_name
}

# VI vNet
data "azurerm_virtual_network" "vnet" {
    name                = var.vnet_name
    resource_group_name = data.azurerm_resource_group.netrg.name
}

# Route table
data "azurerm_route_table" "routetbl" {
    name = var.route_table_name
    resource_group_name = data.azurerm_resource_group.netrg.name
}

# Web app
data "azurerm_linux_web_app" "web_app" {
    name                = var.web_app_name
    resource_group_name = var.web_app_rg_name
}