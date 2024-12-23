resource "azurerm_function_app" "this" {
  name                = var.function_name
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_plan_id = var.app_service_plan_id
  storage_account_name = var.storage_account_name

  app_settings = var.app_settings
  tags         = var.tags
}
