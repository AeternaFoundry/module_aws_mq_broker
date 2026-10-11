output "mq_brokers_id" {
  description = "Map of id values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mq_brokers_apply_immediately" {
  description = "Map of apply_immediately values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.apply_immediately if v.apply_immediately != null }
}
output "mq_brokers_arn" {
  description = "Map of arn values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "mq_brokers_authentication_strategy" {
  description = "Map of authentication_strategy values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.authentication_strategy if v.authentication_strategy != null && length(v.authentication_strategy) > 0 }
}
output "mq_brokers_auto_minor_version_upgrade" {
  description = "Map of auto_minor_version_upgrade values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.auto_minor_version_upgrade if v.auto_minor_version_upgrade != null }
}
output "mq_brokers_broker_name" {
  description = "Map of broker_name values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.broker_name if v.broker_name != null && length(v.broker_name) > 0 }
}
output "mq_brokers_configuration" {
  description = "Map of configuration values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => one(v.configuration) if v.configuration != null && length(v.configuration) > 0 }
}
output "mq_brokers_data_replication_mode" {
  description = "Map of data_replication_mode values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.data_replication_mode if v.data_replication_mode != null && length(v.data_replication_mode) > 0 }
}
output "mq_brokers_data_replication_primary_broker_arn" {
  description = "Map of data_replication_primary_broker_arn values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.data_replication_primary_broker_arn if v.data_replication_primary_broker_arn != null && length(v.data_replication_primary_broker_arn) > 0 }
}
output "mq_brokers_deployment_mode" {
  description = "Map of deployment_mode values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.deployment_mode if v.deployment_mode != null && length(v.deployment_mode) > 0 }
}
output "mq_brokers_encryption_options" {
  description = "Map of encryption_options values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => one(v.encryption_options) if v.encryption_options != null && length(v.encryption_options) > 0 }
}
output "mq_brokers_engine_type" {
  description = "Map of engine_type values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.engine_type if v.engine_type != null && length(v.engine_type) > 0 }
}
output "mq_brokers_engine_version" {
  description = "Map of engine_version values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.engine_version if v.engine_version != null && length(v.engine_version) > 0 }
}
output "mq_brokers_host_instance_type" {
  description = "Map of host_instance_type values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.host_instance_type if v.host_instance_type != null && length(v.host_instance_type) > 0 }
}
output "mq_brokers_instances" {
  description = "Map of instances values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.instances if v.instances != null && length(v.instances) > 0 }
}
output "mq_brokers_ldap_server_metadata" {
  description = "Map of ldap_server_metadata values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => one(v.ldap_server_metadata) if v.ldap_server_metadata != null && length(v.ldap_server_metadata) > 0 }
  sensitive   = true
}
output "mq_brokers_logs" {
  description = "Map of logs values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => one(v.logs) if v.logs != null && length(v.logs) > 0 }
}
output "mq_brokers_maintenance_window_start_time" {
  description = "Map of maintenance_window_start_time values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => one(v.maintenance_window_start_time) if v.maintenance_window_start_time != null && length(v.maintenance_window_start_time) > 0 }
}
output "mq_brokers_pending_data_replication_mode" {
  description = "Map of pending_data_replication_mode values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.pending_data_replication_mode if v.pending_data_replication_mode != null && length(v.pending_data_replication_mode) > 0 }
}
output "mq_brokers_publicly_accessible" {
  description = "Map of publicly_accessible values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.publicly_accessible if v.publicly_accessible != null }
}
output "mq_brokers_region" {
  description = "Map of region values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "mq_brokers_resource_share_arns" {
  description = "Map of resource_share_arns values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.resource_share_arns if v.resource_share_arns != null && length(v.resource_share_arns) > 0 }
}
output "mq_brokers_security_groups" {
  description = "Map of security_groups values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.security_groups if v.security_groups != null && length(v.security_groups) > 0 }
}
output "mq_brokers_shared_resources" {
  description = "Map of shared_resources values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.shared_resources if v.shared_resources != null && length(v.shared_resources) > 0 }
}
output "mq_brokers_storage_type" {
  description = "Map of storage_type values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.storage_type if v.storage_type != null && length(v.storage_type) > 0 }
}
output "mq_brokers_subnet_ids" {
  description = "Map of subnet_ids values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.subnet_ids if v.subnet_ids != null && length(v.subnet_ids) > 0 }
}
output "mq_brokers_tags" {
  description = "Map of tags values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "mq_brokers_tags_all" {
  description = "Map of tags_all values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "mq_brokers_user" {
  description = "Map of user values across all mq_brokers, keyed the same as var.mq_brokers"
  value       = { for k, v in aws_mq_broker.mq_brokers : k => v.user if v.user != null && length(v.user) > 0 }
  sensitive   = true
}

