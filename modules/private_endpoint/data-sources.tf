# Network resource group
data "azurerm_resource_group" "netrg" {
    name = var.network_rg_name
}

# Private endpoint vNet
data "azurerm_virtual_network" "pevnet" {
    name                = var.pvt_endpoint_vnet_name
    resource_group_name = data.azurerm_resource_group.netrg.name
}

# Private endpoint subnet
data "azurerm_subnet" "pesubnet" {
    name                = var.pvt_endpoint_subnet_name
    resource_group_name = data.azurerm_resource_group.netrg.name
    virtual_network_name = data.azurerm_virtual_network.pevnet.name
}

# Private DNS zone
data "azurerm_private_dns_zone" "pvt_dns_zone" {
    provider            = azurerm.root
    name                = var.pvt_dns_zone_name
    resource_group_name = var.pvt_dns_zone_rg_name
}