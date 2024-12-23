output "account_id" {
  description = "Storage account ID"
  value       = azurerm_storage_account.this.id
}

output "account_name" {
  description = "Storage account name"
  value       = azurerm_storage_account.this.name
}
