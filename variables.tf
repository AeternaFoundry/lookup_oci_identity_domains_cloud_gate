variable "identity_domains_cloud_gate_lookup" {
  description = <<EOT
Map of identity_domains_cloud_gate_lookup, attributes below
Required:
    - cloud_gate_id
    - idcs_endpoint
Optional:
    - attribute_sets
    - attributes
    - authorization
    - resource_type_schema_version
EOT

  type = map(object({
    cloud_gate_id                = string
    idcs_endpoint                = string
    attribute_sets               = optional(list(string))
    attributes                   = optional(string)
    authorization                = optional(string)
    resource_type_schema_version = optional(string)
  }))
}

