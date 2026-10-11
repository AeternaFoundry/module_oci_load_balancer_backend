output "load_balancer_backends_id" {
  description = "Map of id values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no id are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_balancer_backends_backendset_name" {
  description = "Map of backendset_name values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no backendset_name are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.backendset_name if v.backendset_name != null && length(v.backendset_name) > 0 }
}
output "load_balancer_backends_backup" {
  description = "Map of backup values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no backup are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.backup if v.backup != null }
}
output "load_balancer_backends_drain" {
  description = "Map of drain values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no drain are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.drain if v.drain != null }
}
output "load_balancer_backends_ip_address" {
  description = "Map of ip_address values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no ip_address are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "load_balancer_backends_load_balancer_id" {
  description = "Map of load_balancer_id values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no load_balancer_id are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.load_balancer_id if v.load_balancer_id != null && length(v.load_balancer_id) > 0 }
}
output "load_balancer_backends_max_connections" {
  description = "Map of max_connections values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no max_connections are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.max_connections if v.max_connections != null }
}
output "load_balancer_backends_name" {
  description = "Map of name values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no name are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.name if v.name != null && length(v.name) > 0 }
}
output "load_balancer_backends_offline" {
  description = "Map of offline values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no offline are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.offline if v.offline != null }
}
output "load_balancer_backends_port" {
  description = "Map of port values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no port are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.port if v.port != null }
}
output "load_balancer_backends_state" {
  description = "Map of state values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no state are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.state if v.state != null && length(v.state) > 0 }
}
output "load_balancer_backends_weight" {
  description = "Map of weight values across all load_balancer_backends, keyed the same as var.load_balancer_backends except keys with no weight are omitted"
  value       = { for k, v in oci_load_balancer_backend.load_balancer_backends : k => v.weight if v.weight != null }
}

