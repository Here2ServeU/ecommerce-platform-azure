variable "function_name" {
  description = "Function App name"
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

variable "storage_account_name" {
  description = "Name of the associated storage account"
  type        = string
}

variable "app_settings" {
  description = "Application settings"
  type        = map(string)
}

variable "tags" {
  description = "Tags for the Function App"
  type        = map(string)
}
