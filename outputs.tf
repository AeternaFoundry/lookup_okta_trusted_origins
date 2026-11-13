output "trusted_origins_lookup_id" {
  description = "Map of id values across all trusted_origins_lookup, keyed the same as var.trusted_origins_lookup"
  value       = { for k, v in data.okta_trusted_origins.trusted_origins_lookup : k => v.id }
}
output "trusted_origins_lookup_filter" {
  description = "Map of filter values across all trusted_origins_lookup, keyed the same as var.trusted_origins_lookup"
  value       = { for k, v in data.okta_trusted_origins.trusted_origins_lookup : k => v.filter }
}
output "trusted_origins_lookup_trusted_origins" {
  description = "Map of trusted_origins values across all trusted_origins_lookup, keyed the same as var.trusted_origins_lookup"
  value       = { for k, v in data.okta_trusted_origins.trusted_origins_lookup : k => v.trusted_origins }
}

