data "azuread_service_principals" "deployer" {
  display_names = [
    var.service_principal_display_name
  ]
}

locals {
  service_principal_id = data.azuread_service_principals.deployer.client_ids[0]
}

resource "azurerm_resource_group" "tf-state-backend" {
  name       = var.resource_group_name
  location   = var.location
  managed_by = local.service_principal_id
}