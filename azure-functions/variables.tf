variable "resource_group_name" {
  type    = string
  default = "example-rg"
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "storage_account_name" {
  type    = string
  default = "examplestorage"
}

variable "app_service_plan_name" {
  type    = string
  default = "example-app-service-plan"
}

variable "function_app_name" {
  type    = string
  default = "example-function-app"
}

variable "function_name" {
  type    = string
  default = "example-function"
}
