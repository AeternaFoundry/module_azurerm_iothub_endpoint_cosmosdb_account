output "iothub_endpoint_cosmosdb_accounts_id" {
  description = "Map of id values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iothub_endpoint_cosmosdb_accounts_authentication_type" {
  description = "Map of authentication_type values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.authentication_type if v.authentication_type != null && length(v.authentication_type) > 0 }
}
output "iothub_endpoint_cosmosdb_accounts_container_name" {
  description = "Map of container_name values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.container_name if v.container_name != null && length(v.container_name) > 0 }
}
output "iothub_endpoint_cosmosdb_accounts_database_name" {
  description = "Map of database_name values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "iothub_endpoint_cosmosdb_accounts_endpoint_uri" {
  description = "Map of endpoint_uri values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.endpoint_uri if v.endpoint_uri != null && length(v.endpoint_uri) > 0 }
}
output "iothub_endpoint_cosmosdb_accounts_identity_id" {
  description = "Map of identity_id values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.identity_id if v.identity_id != null && length(v.identity_id) > 0 }
}
output "iothub_endpoint_cosmosdb_accounts_iothub_id" {
  description = "Map of iothub_id values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.iothub_id if v.iothub_id != null && length(v.iothub_id) > 0 }
}
output "iothub_endpoint_cosmosdb_accounts_name" {
  description = "Map of name values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iothub_endpoint_cosmosdb_accounts_partition_key_name" {
  description = "Map of partition_key_name values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.partition_key_name if v.partition_key_name != null && length(v.partition_key_name) > 0 }
}
output "iothub_endpoint_cosmosdb_accounts_partition_key_template" {
  description = "Map of partition_key_template values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.partition_key_template if v.partition_key_template != null && length(v.partition_key_template) > 0 }
}
output "iothub_endpoint_cosmosdb_accounts_primary_key" {
  description = "Map of primary_key values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.primary_key if v.primary_key != null && length(v.primary_key) > 0 }
  sensitive   = true
}
output "iothub_endpoint_cosmosdb_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "iothub_endpoint_cosmosdb_accounts_secondary_key" {
  description = "Map of secondary_key values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.secondary_key if v.secondary_key != null && length(v.secondary_key) > 0 }
  sensitive   = true
}
output "iothub_endpoint_cosmosdb_accounts_subscription_id" {
  description = "Map of subscription_id values across all iothub_endpoint_cosmosdb_accounts, keyed the same as var.iothub_endpoint_cosmosdb_accounts"
  value       = { for k, v in azurerm_iothub_endpoint_cosmosdb_account.iothub_endpoint_cosmosdb_accounts : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}

