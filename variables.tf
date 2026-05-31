variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group."
}

variable "location" {
  type        = string
  description = "Azure location for all resources."
}

variable "virtual_network_name" {
  type        = string
  description = "Name of the Azure virtual network."
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the virtual network."
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet."
}

variable "subnet_address_prefix" {
  type        = string
  description = "Address prefix for the subnet."
}

variable "storage_account_name" {
  type        = string
  description = "Name of the Azure storage account."
}
