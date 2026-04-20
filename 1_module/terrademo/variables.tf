
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
  default     = "demo_dataset"
}

variable "gsc_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "sonic-earth-493610-terra-bucket"
}

variable "gsc_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}