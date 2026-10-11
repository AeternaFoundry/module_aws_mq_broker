variable "mq_brokers" {
  description = <<EOT
Map of mq_brokers, attributes below
Required:
    - broker_name
    - engine_type
    - engine_version
    - host_instance_type
Optional:
    - apply_immediately
    - authentication_strategy
    - auto_minor_version_upgrade
    - data_replication_mode
    - data_replication_primary_broker_arn
    - deployment_mode
    - publicly_accessible
    - region
    - resource_share_arns
    - security_groups
    - storage_type
    - subnet_ids
    - tags
    - tags_all
    - configuration (block):
        - id (optional)
        - revision (optional)
    - encryption_options (block):
        - kms_key_id (optional)
        - use_aws_owned_key (optional)
    - ldap_server_metadata (block):
        - hosts (optional)
        - role_base (optional)
        - role_name (optional)
        - role_search_matching (optional)
        - role_search_subtree (optional)
        - service_account_password (optional)
        - service_account_username (optional)
        - user_base (optional)
        - user_role_name (optional)
        - user_search_matching (optional)
        - user_search_subtree (optional)
    - logs (block):
        - audit (optional)
        - general (optional)
    - maintenance_window_start_time (block):
        - day_of_week (required)
        - time_of_day (required)
        - time_zone (required)
    - user (block):
        - console_access (optional)
        - groups (optional)
        - password (required)
        - replication_user (optional)
        - username (required)
EOT

  type = map(object({
    broker_name                         = string
    engine_type                         = string
    engine_version                      = string
    host_instance_type                  = string
    subnet_ids                          = optional(set(string))
    storage_type                        = optional(string)
    security_groups                     = optional(set(string))
    resource_share_arns                 = optional(set(string))
    region                              = optional(string)
    publicly_accessible                 = optional(bool)
    data_replication_primary_broker_arn = optional(string)
    tags                                = optional(map(string))
    data_replication_mode               = optional(string)
    auto_minor_version_upgrade          = optional(bool)
    authentication_strategy             = optional(string)
    apply_immediately                   = optional(bool)
    deployment_mode                     = optional(string)
    tags_all                            = optional(map(string))
    configuration = optional(object({
      id       = optional(string)
      revision = optional(number)
    }))
    encryption_options = optional(object({
      kms_key_id        = optional(string)
      use_aws_owned_key = optional(bool)
    }))
    ldap_server_metadata = optional(object({
      hosts                    = optional(list(string))
      role_base                = optional(string)
      role_name                = optional(string)
      role_search_matching     = optional(string)
      role_search_subtree      = optional(bool)
      service_account_password = optional(string)
      service_account_username = optional(string)
      user_base                = optional(string)
      user_role_name           = optional(string)
      user_search_matching     = optional(string)
      user_search_subtree      = optional(bool)
    }))
    logs = optional(object({
      audit   = optional(string)
      general = optional(bool)
    }))
    maintenance_window_start_time = optional(object({
      day_of_week = string
      time_of_day = string
      time_zone   = string
    }))
    user = optional(list(object({
      console_access   = optional(bool)
      groups           = optional(set(string))
      password         = string
      replication_user = optional(bool)
      username         = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.mq_brokers : (
        v.user == null || alltrue([for item in v.user : (item.groups == null || (alltrue([for x in item.groups : length(x) >= 2 && length(x) <= 100])))])
      )
    ])
    error_message = "must be between 2 and 100 characters"
  }
  # Note: 15 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

