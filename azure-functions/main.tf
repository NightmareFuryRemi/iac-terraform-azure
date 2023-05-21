# Resource Group
resource "azurerm_resource_group" "example_rg" {
  name     = var.resource_group_name
  location = var.location
}

# Storage Account
resource "azurerm_storage_account" "example_storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example_rg.name
  location                 = azurerm_resource_group.example_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# App Service Plan
resource "azurerm_app_service_plan" "example_app_service_plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example_rg.location
  resource_group_name = azurerm_resource_group.example_rg.name
  kind                = "FunctionApp"

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

# Function App
resource "azurerm_function_app" "example_function_app" {
  name                      = var.function_app_name
  location                  = azurerm_resource_group.example_rg.location
  resource_group_name       = azurerm_resource_group.example_rg.name
  app_service_plan_id       = azurerm_app_service_plan.example_app_service_plan.id
  storage_account_name      = azurerm_storage_account.example_storage.name
  storage_account_access_key = azurerm_storage_account.example_storage.primary_access_key

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME" = "dotnet"
  }
}
