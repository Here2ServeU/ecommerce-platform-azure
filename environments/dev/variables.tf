variable "location" {
  description = "Azure region"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "cosmosdb_account_name" {
  description = "Name of the CosmosDB account"
  type        = string
}

variable "mysql_server_name" {
  description = "MySQL server name"
  type        = string
}

variable "mysql_database_name" {
  description = "MySQL database name"
  type        = string
}

variable "mysql_admin_username" {
  description = "MySQL admin username"
  type        = string
}

variable "mysql_admin_password" {
  description = "MySQL admin password"
  type        = string
  sensitive   = true
}

variable "function_app_name" {
  description = "Function app name"
  type        = string
}

variable "api_name" {
  description = "API Management service name"
  type        = string
}
