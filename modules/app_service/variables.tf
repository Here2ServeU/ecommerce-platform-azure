variable "app_service_name" {
  description = "App Service name"
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

variable "app_service_plan_id" {
  description = "App Service Plan ID"
  type        = string
}

variable "app_settings" {
  description = "Application settings"
  type        = map(string)
}

variable "tags" {
  description = "Tags for the App Service"
  type        = map(string)
}
