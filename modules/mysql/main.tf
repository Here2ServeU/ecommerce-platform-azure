resource "azurerm_mysql_server" "this" {
  name                = var.server_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = "B_Gen5_2"
  version             = "8.0"
  administrator_login = var.admin_username
  administrator_login_password = var.admin_password
  storage_mb          = 5120
  tags                = var.tags
}
