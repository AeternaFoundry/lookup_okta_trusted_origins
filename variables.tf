variable "trusted_origins_lookup" {
  description = <<EOT
Map of trusted_origins_lookup, attributes below
Optional:
    - filter
EOT

  type = map(object({
    filter = optional(string)
  }))
}

