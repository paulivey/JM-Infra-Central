# Output the app service plan id
output "web_app_id" {
    value = azurerm_app_service.web_app.id
}