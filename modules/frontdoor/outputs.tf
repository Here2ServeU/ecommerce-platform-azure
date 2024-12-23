output "frontdoor_url" {
  description = "Front Door URL"
  value       = azurerm_frontdoor.this.frontend_endpoint
}
