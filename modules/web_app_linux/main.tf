# Create app service plan
resource "azurerm_service_plan" "asp" {
    name                         = var.asp_name
    location                     = var.location
    resource_group_name          = var.app_rg_name
    os_type                      = var.asp_kind
    tags                         = var.tags
    sku_name                     = var.asp_size
}

# Create app service web app
resource "azurerm_linux_web_app" "web_app" {
  name = var.app_name
  resource_group_name = var.app_rg_name
  location = var.location
  service_plan_id = azurerm_service_plan.asp.id
  client_certificate_enabled = var.app_cert_enabled
  client_certificate_mode = var.app_cert_mode
  app_settings = var.app_settings
  tags = var.tags
  site_config {
    worker_count = var.app_site_cfg_num_workers
    app_command_line = var.app_cmd_line
    ftps_state = var.app_ftps_state
    vnet_route_all_enabled = var.route_all_enabled
    application_stack {
      # Example - Only create this property if the language is Python, and assign a version, otherwise don't create it
      python_version = var.app_language == "Python" ? var.app_language_version : null
      dotnet_version = var.app_dotnet_version
    }
  }
}