variable "credentials" {
  description = "My Credentials"
  default = "./keys/my-creds.json"
}

variable "project" {
  description = "Project Name"
  default = "dez-2026"
}

variable "location" {
  description = "Project Location"
  default = "EU"
}

variable "bq_dataset_name" {
  description = "My big query data set name"
  default = "demo_dataset"
}

variable "gcs_bucket_name" {
    description = "My Storage Bucket Name"
    default = "dez-2026-terra-bucket"
}

variable "gcs_storage_class" {
    description = "Bucket Storage Class"
    default = "STANDARD"
}