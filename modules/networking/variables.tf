variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "A list of subnet prefixes for the virtual network."
  type        = list(string)
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}