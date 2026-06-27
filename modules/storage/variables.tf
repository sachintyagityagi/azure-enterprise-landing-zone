variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "location" {
  description = "The Azure location where the storage account will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created."
  type        = string
}

variable "account_tier" {
  description = "The tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"
}

variable "enable_https_traffic_only" {
  description = "Specifies whether to allow HTTPS traffic only."
  type        = bool
  default     = true
}