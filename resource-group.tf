resource "azurerm_resource_group" "tf-state-backend" {
  name     = var.resource_group_name
  location = "Sweden Central"
  managed_by = "c3adec27-11c3-4c43-9d71-eb6b4aa64651"
}