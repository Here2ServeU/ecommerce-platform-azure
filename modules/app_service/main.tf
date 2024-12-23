resource "azurerm_app_service" "this" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_plan_id = var.app_service_plan_id

  app_settings = var.app_settings
  tags         = var.tags
}
