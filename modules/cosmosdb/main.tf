resource "azurerm_cosmosdb_account" "this" {
  name                = var.account_name
  resource_group_name = var.resource_group_name
  location            = var.location
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"
  consistency_policy {
    consistency_level = "Session"
  }
  tags = var.tags
}
