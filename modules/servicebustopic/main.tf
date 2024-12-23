resource "azurerm_servicebus_namespace" "this" {
  name                = var.namespace_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Standard"
  tags                = var.tags
}

resource "azurerm_servicebus_topic" "this" {
  name                = var.topic_name
  resource_group_name = var.resource_group_name
  namespace_name      = azurerm_servicebus_namespace.this.name
  tags                = var.tags
}

resource "azurerm_servicebus_subscription" "this" {
  name                = var.subscription_name
  resource_group_name = var.resource_group_name
  namespace_name      = azurerm_servicebus_namespace.this.name
  topic_name          = azurerm_servicebus_topic.this.name
  tags                = var.tags
}
