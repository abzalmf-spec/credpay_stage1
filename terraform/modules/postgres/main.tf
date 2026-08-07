resource "random_password" "admin" {
    length = 24
    special = true
    override_special = "_%@"
    min_lower = 2
    min_upper = 2
    min_numeric = 2
    min_special = 2
}

resource "azurerm_postgresql_flexible_server" "pgs" {
    name = "psql-${var.name_prefix}"
    resource_group_name = var.resource_group_name
    location = var.location
    version = var.postgres_version
    zone = "2"
    public_network_access_enabled = true
    administrator_login = var.admin_username
    administrator_password = random_password.admin.result
    storage_mb = 32768
    sku_name = "B_Standard_B2s"
    backup_retention_days = 7
    tags    = var.tags

}

resource "azurerm_postgresql_flexible_server_database" "pgdb" {
    name = var.database_name
    server_id = azurerm_postgresql_flexible_server.pgs.id
    charset   = "UTF8"
    collation = "en_US.utf8"

   }
resource "azurerm_postgresql_flexible_server_firewall_rule" "pgfw" {
    name = "AllowAzureServices"
    server_id = azurerm_postgresql_flexible_server.pgs.id
    start_ip_address = "0.0.0.0"
    end_ip_address = "0.0.0.0"
}
resource "azurerm_postgresql_flexible_server_configuration" "require_ssl" {
    name = "require_secure_transport"
    server_id = azurerm_postgresql_flexible_server.pgs.id
    value = "ON"
}
