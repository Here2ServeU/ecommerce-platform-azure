variable "account_name" {
  description = "Name of the CosmosDB account"
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
  description = "Tags for the CosmosDB account"
  type        = map(string)
}
