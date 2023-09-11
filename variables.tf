

variable "region" {
  type = string
  default = "us-east-1"
}

variable "account_name" {
  type = string
  description = "(Required) Account Name"
}

variable "root_email" {
  type = string
  description = "(Required) Account Email"
}

variable tags{
  type = map(string)
  description = "(Required) Tags for the resource"
}

variable "ou_name" {
  type = string
  description = "(Required) Org Unit Name"
}

variable "parent_id" {
  type = string
  description = "(Required) Organization Unit Parent Id"
}

