

resource "google_bigquery_table" "view" {
  project    = var.project_id
  dataset_id = var.dataset_id
  table_id   = var.table_id

  view {
    query = var.query
    use_legacy_sql = false
  }

  labels = {
    env    = "prod"
    deploy = "terraform"
  }
  deletion_protection = var.deletion_protection
}
