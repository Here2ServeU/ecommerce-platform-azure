variable "principal_id" {
  description = "The ID of the principal (user, group, or service principal) to assign the role to"
  type        = string
}

variable "role_definition_name" {
  description = "Name of the Azure role to assign (e.g., Contributor, Reader, etc.)"
  type        = string
}

variable "scope" {
  description = "The scope at which the role assignment applies (e.g., subscription, resource group, or resource)"
  type        = string
}

variable "iam_principal_id" {
  description = "The ID of the principal (user, group, or service principal) to assign the role to"
  type        = string
}

variable "iam_role_definition_name" {
  description = "The name of the Azure role to assign (e.g., Contributor, Reader)"
  type        = string
}

variable "iam_scope" {
  description = "The scope at which the role assignment applies (e.g., subscription, resource group, or resource)"
  type        = string
}
