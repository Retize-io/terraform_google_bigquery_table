

resource "google_bigquery_table" "partitioned_table" {
  project    = var.project_id
  dataset_id = var.dataset_id
  table_id   = var.table_id

  schema              = var.schema
  deletion_protection = var.deletion_protection

  time_partitioning {
    type  = var.partition_type
    field = var.partition_field
  }
  labels = {
    env    = "prod"
    deploy = "terraform"
  }
}
