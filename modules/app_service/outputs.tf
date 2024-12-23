output "app_service_url" {
  description = "App Service URL"
  value       = azurerm_app_service.this.default_site_hostname
}
