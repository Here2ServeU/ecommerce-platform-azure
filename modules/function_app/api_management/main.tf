resource "azurerm_api_management" "this" {
  name                = var.api_name
  resource_group_name = var.resource_group_name
  location            = var.location
  publisher_name      = "T2S Publisher"
  publisher_email     = "admin@t2s.com"

  tags = var.tags
}
