variable "frontdoor_name" {
  description = "Front Door name"
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

variable "backend_address" {
  description = "Backend address for Front Door"
  type        = string
}

variable "tags" {
  description = "Tags for Front Door"
  type        = map(string)
}
