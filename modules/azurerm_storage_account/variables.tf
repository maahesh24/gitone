variable "storage_account_name" {
  type        = string
  description = "Name of the storage account."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name for the storage account."
}

variable "location" {
  type        = string
  description = "Azure region for the storage account."
}
