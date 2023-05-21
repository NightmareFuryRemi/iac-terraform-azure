resource "azurerm_resource_group" "example_resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example_storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example_resource_group.name
  location                 = azurerm_resource_group.example_resource_group.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_storage_container" "example_storage_container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.example_storage_account.name
  container_access_type = var.storage_container_access_type
}

resource "azurerm_storage_blob" "example_storage_blob" {
  name                   = var.storage_blob_name
  storage_account_name   = azurerm_storage_account.example_storage_account.name
  storage_container_name = azurerm_storage_container.example_storage_container.name
  type                   = "Block"
}