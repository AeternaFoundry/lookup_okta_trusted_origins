output "trusted_origins_lookup_id" {
  description = "Map of id values across all trusted_origins_lookup, keyed the same as var.trusted_origins_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_trusted_origins.trusted_origins_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "trusted_origins_lookup_filter" {
  description = "Map of filter values across all trusted_origins_lookup, keyed the same as var.trusted_origins_lookup except keys with no filter are omitted"
  value       = { for k, v in data.okta_trusted_origins.trusted_origins_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "trusted_origins_lookup_trusted_origins" {
  description = "Map of trusted_origins values across all trusted_origins_lookup, keyed the same as var.trusted_origins_lookup except keys with no trusted_origins are omitted"
  value       = { for k, v in data.okta_trusted_origins.trusted_origins_lookup : k => v.trusted_origins if v.trusted_origins != null && length(v.trusted_origins) > 0 }
}

