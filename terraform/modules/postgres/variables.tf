variable "name_prefix" {
    type = string
}
variable "resource_group_name" {
    type = string
}

variable "location" {
    type = string
}
variable "admin_username" {
    type = string
}
variable "database_name" {
    type = string
}
variable "postgres_version" {
    type = string
}
variable "tags" {
    type = map(string)
    default = {
        environment = "dev"
    }
}