data "azurerm_key_vault_secret" "primary_key" {
  for_each     = { for k, v in var.iothub_endpoint_cosmosdb_accounts : k => v if v.primary_key_key_vault_id != null && v.primary_key_key_vault_secret_name != null }
  name         = each.value.primary_key_key_vault_secret_name
  key_vault_id = each.value.primary_key_key_vault_id
}
data "azurerm_key_vault_secret" "secondary_key" {
  for_each     = { for k, v in var.iothub_endpoint_cosmosdb_accounts : k => v if v.secondary_key_key_vault_id != null && v.secondary_key_key_vault_secret_name != null }
  name         = each.value.secondary_key_key_vault_secret_name
  key_vault_id = each.value.secondary_key_key_vault_id
}
resource "azurerm_iothub_endpoint_cosmosdb_account" "iothub_endpoint_cosmosdb_accounts" {
  for_each = var.iothub_endpoint_cosmosdb_accounts

  container_name         = each.value.container_name
  database_name          = each.value.database_name
  endpoint_uri           = each.value.endpoint_uri
  iothub_id              = each.value.iothub_id
  name                   = each.value.name
  resource_group_name    = each.value.resource_group_name
  authentication_type    = each.value.authentication_type
  identity_id            = each.value.identity_id
  partition_key_name     = each.value.partition_key_name
  partition_key_template = each.value.partition_key_template
  primary_key            = each.value.primary_key != null ? each.value.primary_key : try(data.azurerm_key_vault_secret.primary_key[each.key].value, null)
  secondary_key          = each.value.secondary_key != null ? each.value.secondary_key : try(data.azurerm_key_vault_secret.secondary_key[each.key].value, null)
  subscription_id        = each.value.subscription_id
}

