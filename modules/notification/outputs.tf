output "namespace_name" {
  description = "Service Bus namespace name"
  value       = azurerm_servicebus_namespace.this.name
}

output "topic_name" {
  description = "Service Bus topic name"
  value       = azurerm_servicebus_topic.this.name
}

output "subscription_name" {
  description = "Service Bus subscription name"
  value       = azurerm_servicebus_subscription.this.name
}
