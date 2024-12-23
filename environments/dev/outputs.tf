output "storage_account_name" {
  description = "Name of the storage account"
  value       = module.storage_account.account_name
}

output "cosmosdb_endpoint" {
  description = "CosmosDB endpoint"
  value       = module.cosmosdb.endpoint
}

output "mysql_endpoint" {
  description = "MySQL server endpoint"
  value       = module.mysql.endpoint
}

output "function_app_url" {
  description = "Function app URL"
  value       = module.function_app.url
}

output "api_gateway_url" {
  description = "API Management gateway URL"
  value       = module.api_management.gateway_url
}
