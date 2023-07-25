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

variable "query" {
  type        = string
  description = "The query for the BigQuery view."
}
variable "enable_refresh" {
  type    = bool
  default = true
}
variable "refresh_interval_ms" {
  type    = number
  default = 1800000
}


variable "deletion_protection" {
  type        = bool
  description = "Deletion protection of the table"
  default     = true
}
