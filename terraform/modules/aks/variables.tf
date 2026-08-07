variable "name_prefix" {
  description = "The prefix for the resource group name."
  type        = string
}
variable "location" {
  description = "The location of the resource group."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}
variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
}
variable "node_min_count" {
  description = "The minimum number of nodes in the AKS cluster."
  type        = number
}
variable "node_max_count" {
  description = "The maximum number of nodes in the AKS cluster."
  type        = number
}
variable "vm_size" {
  description = "The size of the virtual machines in the AKS cluster."
  type        = string
}
variable "aks_subnet_id" {
  description = "The ID of the subnet for the AKS cluster."
  type        = string
}
variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics workspace for the AKS cluster."
  type        = string
}
variable "tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {
    environment = "dev"
  }
}