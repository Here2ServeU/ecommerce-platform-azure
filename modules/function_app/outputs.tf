output "function_app_url" {
  description = "Function App URL"
  value       = azurerm_function_app.this.default_hostname
}
