resource "azurerm_storage_account" "tf-state-backend" {
  name                     = var.storage_account[0].name
  resource_group_name      = azurerm_resource_group.tf-state-backend.name
  location                 = azurerm_resource_group.tf-state-backend.location
  account_tier             = var.storage_account[0].account_tier
  account_replication_type = var.storage_account[0].account_replication_type
  public_network_access_enabled   = false
  allow_nested_items_to_be_public = false

  blob_properties {
    versioning_enabled = true
  }
}
