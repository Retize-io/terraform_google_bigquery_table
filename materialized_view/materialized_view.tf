

resource "google_bigquery_table" "materialized_view" {
  project    = var.project_id
  dataset_id = var.dataset_id
  table_id   = var.table_id

  materialized_view {
    query               = var.query
    enable_refresh      = var.enable_refresh
    refresh_interval_ms = var.refresh_interval_ms
  }

  labels = {
    env    = "prod"
    deploy = "terraform"
  }
  deletion_protection = var.deletion_protection
}
