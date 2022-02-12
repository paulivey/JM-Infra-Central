# Provider for the root subscription
provider "azurerm" {
    alias = "root"
    # subscription_id = "219f3968-bba7-4c82-8e7f-4a4defa5d40b"
    features {}
}

terraform {
  required_providers {
    azurerm = {
      configuration_aliases = [ root ]
     }
  }
}

# Create private endpoint
resource "azurerm_private_endpoint" "pvt_endpoint" {
    name                = var.pvt_endpoint_name
    location            = data.azurerm_resource_group.netrg.location
    resource_group_name = data.azurerm_resource_group.netrg.name
    subnet_id           = data.azurerm_subnet.pesubnet.id

    private_dns_zone_group {
        name                 = data.azurerm_private_dns_zone.pvt_dns_zone.name
        private_dns_zone_ids = [data.azurerm_private_dns_zone.pvt_dns_zone.id]
    }

    private_service_connection {
        name = "${lower(var.app_name)}-privateserviceconnection"
        private_connection_resource_id = var.resource_id
        is_manual_connection = var.is_manual_connection
        subresource_names = var.subresource_names
    }
}