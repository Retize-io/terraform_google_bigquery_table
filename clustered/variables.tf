variable "project_id" {
  type        = string
  description = "The ID of the Google Cloud project where the dataset and table should be created."
}

variable "dataset_id" {
  type        = string
  description = "The ID of the BigQuery dataset where the table should be created."
}

variable "table_id" {
  type        = string
  description = "The ID of the BigQuery table to create."
}

variable "schema" {
  type        = string
  description = "The schema for the BigQuery table."
}

variable "cluster_fields" {
  type = list(string)
}

variable "deletion_protection" {
  type        = bool
  description = "Deletion protection of the table"
  default     = true
}
