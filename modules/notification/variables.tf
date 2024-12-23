variable "namespace_name" {
  description = "Service Bus namespace name"
  type        = string
}

variable "topic_name" {
  description = "Service Bus topic name"
  type        = string
}

variable "subscription_name" {
  description = "Service Bus subscription name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "tags" {
  description = "Tags for the Service Bus"
  type        = map(string)
}

variable "notification_namespace_name" {
  description = "The name of the Service Bus namespace for notifications"
  type        = string
}

variable "notification_topic_name" {
  description = "The name of the Service Bus topic for notifications"
  type        = string
}

variable "notification_subscription_name" {
  description = "The name of the Service Bus subscription for notifications"
  type        = string
}

variable "notification_resource_group_name" {
  description = "The name of the resource group for the Service Bus"
  type        = string
}

variable "notification_location" {
  description = "The Azure region where the Service Bus is deployed"
  type        = string
}

variable "notification_tags" {
  description = "Tags to associate with the Service Bus resources"
  type        = map(string)
}
