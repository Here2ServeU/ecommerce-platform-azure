output "endpoint" {
  description = "MySQL server endpoint"
  value       = azurerm_mysql_server.this.fully_qualified_domain_name
}
