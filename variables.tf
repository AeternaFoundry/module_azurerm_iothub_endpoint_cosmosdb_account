variable "iothub_endpoint_cosmosdb_accounts" {
  description = <<EOT
Map of iothub_endpoint_cosmosdb_accounts, attributes below
Required:
    - container_name
    - database_name
    - endpoint_uri
    - iothub_id
    - name
    - resource_group_name
Optional:
    - authentication_type
    - identity_id
    - partition_key_name
    - partition_key_template
    - primary_key
    - primary_key_key_vault_id (alternative to primary_key - read from Key Vault instead)
    - primary_key_key_vault_secret_name (alternative to primary_key - read from Key Vault instead)
    - secondary_key
    - secondary_key_key_vault_id (alternative to secondary_key - read from Key Vault instead)
    - secondary_key_key_vault_secret_name (alternative to secondary_key - read from Key Vault instead)
    - subscription_id
EOT

  type = map(object({
    container_name                      = string
    database_name                       = string
    endpoint_uri                        = string
    iothub_id                           = string
    name                                = string
    resource_group_name                 = string
    authentication_type                 = optional(string)
    identity_id                         = optional(string)
    partition_key_name                  = optional(string)
    partition_key_template              = optional(string)
    primary_key                         = optional(string)
    primary_key_key_vault_id            = optional(string)
    primary_key_key_vault_secret_name   = optional(string)
    secondary_key                       = optional(string)
    secondary_key_key_vault_id          = optional(string)
    secondary_key_key_vault_secret_name = optional(string)
    subscription_id                     = optional(string)
  }))
}

