output "config" {
  value = local.config
}

output "query" {
  value = local.query
}

output "view" {
  value = google_bigquery_table.view
}
