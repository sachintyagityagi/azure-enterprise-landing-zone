variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
}

variable "admin_password" {
  description = "The admin password for the virtual machine."
  type        = string
  sensitive   = true
}

variable "image_reference" {
  description = "The image reference for the virtual machine."
  type        = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}

variable "network_interface_ids" {
  description = "The network interface IDs to associate with the virtual machine."
  type        = list(string)
}