data "okta_trusted_origins" "trusted_origins_lookup" {
  for_each = var.trusted_origins_lookup

  filter = each.value.filter
}

