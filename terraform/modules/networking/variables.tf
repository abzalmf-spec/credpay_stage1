variable "name_prefix" {
  description = "The prefix for the resource group name."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location of the resource group."
  type        = string
}
variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = string
}
variable "aks_subnet_prefix" {
  description = "The address space for the subnet."
  type        = string
}
variable "postgres_subnet_prefix" {
  description = "The address space for the subnet."
  type        = string
}
variable "tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {
    environment = "dev"
  }
}
