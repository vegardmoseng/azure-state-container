variable "location" {
    type        = string
    description = "The location/region where the resource group will be created"
    default     = null
}

variable "resource_group_name" {
    type        = string
    description = "The name of the resource group to create"
    default     = null
}

variable "service_principal_display_name" {
    type        = string
    description = "The display name of the service principal to create"
    default     = null
  
}