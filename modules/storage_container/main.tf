# Create storage container
resource "azurerm_storage_container" "container" {
  name                  = lower(var.container_name)
  storage_account_name  = var.sta_name
  container_access_type = var.container_access_type
}
