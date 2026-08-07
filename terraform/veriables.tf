variable "subscription_id" {
    type        = string
    
}
variable "location" {
    type        = string
    default     = "canadacentral"

}
variable "vnet_address_space" {
    type        = string
    default     = "10.0.0.0/16"
}
variable "aks_subnet_prefix" {
    type        = string
    default     = "10.0.1.0/24"
}
variable "postgres_subnet_prefix" {
    type        = string
    default     = "10.0.2.0/24"
}
variable "node_count" {
    type        = number
    default     = 2
}
variable "node_min_count" {
    type        = number
    default     = 2
}
variable "node_max_count" {
    type        = number
    default     = 2
}
variable "vm_size" {
    type        = string
    default     = "Standard_DS2alds_v6"
}
variable "postgres_version" {
    type        = string
    default     = "17"
  
}
variable "postgres_admin_username" {
    type        = string
    default     = "credpayadmin"
}
variable "database_name" {
    type        = string
    default     = "credpay"
}
variable "log_retention_days" {
    type        = number
    default     = 7
}
variable "key_vault_name" {
    type        = string
}
variable "key_vault_resource_group_name" {
    type        = string
}
variable "key_vault_location" {
    type        = string
}