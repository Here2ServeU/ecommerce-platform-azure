provider "azurerm" {
  features {}
}

# Storage Account Module
module "storage_account" {
  source              = "../../modules/storage_account"
  account_name        = var.storage_account_name
  resource_group_name = azurerm_resource_group.ecommerce.name
  location            = var.location
  environment         = var.environment
}

# CosmosDB Module
module "cosmosdb" {
  source              = "../../modules/cosmosdb"
  account_name        = var.cosmosdb_account_name
  resource_group_name = azurerm_resource_group.ecommerce.name
  location            = var.location
  environment         = var.environment
}

# MySQL Module
module "mysql" {
  source              = "../../modules/mysql"
  server_name         = var.mysql_server_name
  database_name       = var.mysql_database_name
  admin_username      = var.mysql_admin_username
  admin_password      = var.mysql_admin_password
  resource_group_name = azurerm_resource_group.ecommerce.name
  location            = var.location
  environment         = var.environment
}

# Function App Module
module "function_app" {
  source              = "../../modules/function_app"
  app_name            = var.function_app_name
  storage_account_id  = module.storage_account.account_id
  cosmosdb_endpoint   = module.cosmosdb.endpoint
  mysql_endpoint      = module.mysql.endpoint
  resource_group_name = azurerm_resource_group.ecommerce.name
  location            = var.location
  environment         = var.environment
}

# API Management Module
module "api_management" {
  source              = "../../modules/api_management"
  api_name            = var.api_name
  function_app_url    = module.function_app.url
  resource_group_name = azurerm_resource_group.ecommerce.name
  location            = var.location
  environment         = var.environment
}

# Front Door Module
module "frontdoor" {
  source              = "../../modules/frontdoor"
  backend_address     = module.api_management.gateway_url
  resource_group_name = azurerm_resource_group.ecommerce.name
  location            = var.location
  environment         = var.environment
}

# Resource Group
resource "azurerm_resource_group" "ecommerce" {
  name     = "${var.environment}-ecommerce-rg"
  location = var.location
}

# Notification Module
module "notification" {
  source              = "../../modules/notification"
  namespace_name      = var.notification_namespace_name
  topic_name          = var.notification_topic_name
  subscription_name   = var.notification_subscription_name
  resource_group_name = var.notification_resource_group_name
  location            = var.notification_location
  tags                = var.notification_tags
}

# IAM Module
module "iam" {
  source               = "../../modules/iam"
  principal_id         = var.iam_principal_id
  role_definition_name = var.iam_role_definition_name
  scope                = var.iam_scope
}
