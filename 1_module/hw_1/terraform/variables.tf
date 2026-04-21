
variable "project" {
  description = "Project"
  default     = "sonic-earth-493610-q1"
}

variable "region" {
  description = "Region"
  default     = "europe-west1"
}

variable "location" {
  description = "Project Location"
  default     = "EU"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "dataset_hw_1"
}

variable "gsc_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "bucket_hw_1_vashm"
}

variable "gsc_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}