# Output the app service plan id
output "web_app_id" {
    value = azurerm_linux_web_app.web_app.id
}