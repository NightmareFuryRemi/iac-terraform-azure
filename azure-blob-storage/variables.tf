variable "resource_group_name" {
  description = "Nazwa grupy zasobów"
  type        = string
}

variable "location" {
  description = "Lokalizacja grupy zasobów"
  type        = string
}

variable "storage_account_name" {
  description = "Nazwa konta składowania"
  type        = string
}

variable "storage_account_tier" {
  description = "Tier konta składowania"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "Typ replikacji konta składowania"
  type        = string
  default     = "LRS"
}

variable "storage_container_name" {
  description = "Nazwa kontenera składowania"
  type        = string
}

variable "storage_container_access_type" {
  description = "Typ dostępu do kontenera składowania"
  type        = string
  default     = "private"
}

variable "storage_blob_name" {
  description = "Nazwa bloba składowania"
  type        = string
}

variable "location" {
  description = "Lokalizacja grupy zasobów"
  type        = string
  default     = "westeurope"
}