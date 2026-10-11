resource "google_compute_instance_group_named_port" "compute_instance_group_named_ports" {
  for_each = var.compute_instance_group_named_ports

  group           = each.value.group
  name            = each.value.name
  port            = each.value.port
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  zone            = each.value.zone

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

