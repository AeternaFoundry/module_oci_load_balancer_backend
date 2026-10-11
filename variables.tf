variable "load_balancer_backends" {
  description = <<EOT
Map of load_balancer_backends, attributes below
Required:
    - backendset_name
    - ip_address
    - load_balancer_id
    - port
Optional:
    - backup
    - drain
    - max_connections
    - offline
    - weight
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    backendset_name  = string
    ip_address       = string
    load_balancer_id = string
    port             = number
    backup           = optional(bool)
    drain            = optional(bool)
    max_connections  = optional(number)
    offline          = optional(bool)
    weight           = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

