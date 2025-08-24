resource "azurerm_storage_account" "stgacct" {
  name                     = var.stgname
  resource_group_name      = var.rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}