variable "compute_instance_group_named_ports" {
  description = <<EOT
Map of compute_instance_group_named_ports, attributes below
Required:
    - group
    - name
    - port
Optional:
    - deletion_policy
    - project
    - zone
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    group           = string
    name            = string
    port            = number
    deletion_policy = optional(string)
    project         = optional(string)
    zone            = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

