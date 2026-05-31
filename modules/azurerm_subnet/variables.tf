variable "subnet_name" {
  type        = string
  description = "Name of the subnet."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name for the subnet."
}

variable "virtual_network_name" {
  type        = string
  description = "Virtual network name for the subnet."
}

variable "address_prefix" {
  type        = string
  description = "Address prefix for the subnet."
}
