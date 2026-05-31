variable "virtual_network_name" {
  type        = string
  description = "Name of the virtual network."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name for the virtual network."
}

variable "location" {
  type        = string
  description = "Azure region for the virtual network."
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the virtual network."
}
