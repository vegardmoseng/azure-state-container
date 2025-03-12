# General 
variable "location" {
    type        = string
    description = "The location/region where the resource group will be created"
    default     = null
}

# Resource Group
variable "resource_group_name" {
    type        = string
    description = "The name of the resource group to create"
    default     = null
}

# Service Principal
variable "service_principal_display_name" {
    type        = string
    description = "The display name of the service principal to create"
    default     = null
  
}

variable "storage_account" {
  type = list(object({
    name          = string
    account_tier  = string
    account_replication_type = string
  }))
  default = null
}