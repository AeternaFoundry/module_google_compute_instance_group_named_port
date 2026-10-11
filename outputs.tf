output "compute_instance_group_named_ports_id" {
  description = "Map of id values across all compute_instance_group_named_ports, keyed the same as var.compute_instance_group_named_ports except keys with no id are omitted"
  value       = { for k, v in google_compute_instance_group_named_port.compute_instance_group_named_ports : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_instance_group_named_ports_deletion_policy" {
  description = "Map of deletion_policy values across all compute_instance_group_named_ports, keyed the same as var.compute_instance_group_named_ports except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_instance_group_named_port.compute_instance_group_named_ports : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_instance_group_named_ports_group" {
  description = "Map of group values across all compute_instance_group_named_ports, keyed the same as var.compute_instance_group_named_ports except keys with no group are omitted"
  value       = { for k, v in google_compute_instance_group_named_port.compute_instance_group_named_ports : k => v.group if v.group != null && length(v.group) > 0 }
}
output "compute_instance_group_named_ports_name" {
  description = "Map of name values across all compute_instance_group_named_ports, keyed the same as var.compute_instance_group_named_ports except keys with no name are omitted"
  value       = { for k, v in google_compute_instance_group_named_port.compute_instance_group_named_ports : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_instance_group_named_ports_port" {
  description = "Map of port values across all compute_instance_group_named_ports, keyed the same as var.compute_instance_group_named_ports except keys with no port are omitted"
  value       = { for k, v in google_compute_instance_group_named_port.compute_instance_group_named_ports : k => v.port if v.port != null }
}
output "compute_instance_group_named_ports_project" {
  description = "Map of project values across all compute_instance_group_named_ports, keyed the same as var.compute_instance_group_named_ports except keys with no project are omitted"
  value       = { for k, v in google_compute_instance_group_named_port.compute_instance_group_named_ports : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_instance_group_named_ports_zone" {
  description = "Map of zone values across all compute_instance_group_named_ports, keyed the same as var.compute_instance_group_named_ports except keys with no zone are omitted"
  value       = { for k, v in google_compute_instance_group_named_port.compute_instance_group_named_ports : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

