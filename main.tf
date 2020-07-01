locals {
  config     = yamldecode(file(var.config_file))
  query_file = contains(keys(local.config), "query_file") ? join("/", [dirname(var.config_file), local.config.query_file]) : null
  query      = local.query_file != null ? file(local.query_file) : local.config.query
}

resource "google_bigquery_table" "view" {
  dataset_id  = local.config.dataset_id
  table_id    = local.config.table_id
  description = lookup(local.config, "description", "")
  view {
    query          = local.query
    use_legacy_sql = false
  }
}
