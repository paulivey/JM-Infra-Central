# Create NSG
resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = data.azurerm_resource_group.netrg.location
  resource_group_name = data.azurerm_resource_group.netrg.name
  tags                = var.tags
}

# Create subnet
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = data.azurerm_resource_group.netrg.name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  address_prefixes     = var.address_prefixes

  delegation {
    name = "delegation"

    service_delegation {
      name    = var.svc_delegation_name
      # Conditional use of actions - will be omitted if var.delegation_with_actions == false
      actions = var.delegation_with_actions == true ? var.svc_delegation_actions : null
    }
  }
}


# Assign subnet to route table
resource "azurerm_subnet_route_table_association" "rtassoc" {
  subnet_id      = azurerm_subnet.subnet.id
  route_table_id = data.azurerm_route_table.routetbl.id
}

# Assign subnet to NSG
resource "azurerm_subnet_network_security_group_association" "nsgassoc" {
  network_security_group_id = azurerm_network_security_group.nsg.id
  subnet_id                 = azurerm_subnet.subnet.id
}

# Set up vNet integration with new subnet
resource "azurerm_app_service_virtual_network_swift_connection" "vi" {
  app_service_id = data.azurerm_app_service.web_app.id
  subnet_id = azurerm_subnet.subnet.id
}
