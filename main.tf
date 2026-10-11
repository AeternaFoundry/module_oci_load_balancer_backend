resource "oci_load_balancer_backend" "load_balancer_backends" {
  for_each = var.load_balancer_backends

  backendset_name  = each.value.backendset_name
  ip_address       = each.value.ip_address
  load_balancer_id = each.value.load_balancer_id
  port             = each.value.port
  backup           = each.value.backup
  drain            = each.value.drain
  max_connections  = each.value.max_connections
  offline          = each.value.offline
  weight           = each.value.weight

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

