output "server_id" {
    value = azurerm_postgresql_flexible_server.pgs.id
}

output "server_name" {
    value = azurerm_postgresql_flexible_server.pgs.name
}
output "database_name" {
    value = azurerm_postgresql_flexible_server_database.pgdb.name
}
output "fqdn" {
    value = azurerm_postgresql_flexible_server.pgs.fqdn
}
output "admin_username" {
    value = azurerm_postgresql_flexible_server.pgs.administrator_login
}
output "admin_password" {
    value = random_password.admin.result
    sensitive = true
}