resource "azurerm_frontdoor" "this" {
  name                = var.frontdoor_name
  resource_group_name = var.resource_group_name
  location            = var.location

  backend_pool {
    name = "backend_pool"
    backend {
      address = var.backend_address
    }
  }

  tags = var.tags
}
