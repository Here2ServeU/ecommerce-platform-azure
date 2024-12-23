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
