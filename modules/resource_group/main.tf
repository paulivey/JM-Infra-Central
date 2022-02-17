# Create resource group
resource "azurerm_resource_group" "rg" {
  name     = upper(var.rg_name)
  location = var.location
  tags     = var.tags
}

# Make the developer an owner of the resource group
resource "azurerm_role_assignment" "role_assignment"{
  scope = azurerm_resource_group.rg.id
  role_definition_name = "Owner"
  principal_id = var.owner_object_id
}
