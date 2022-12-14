# ------------------
# Common variables
# ------------------

# <--- Project variables --- >
variable "project" {
  description = "This GCP project ID"
  type        = string
}
variable "region" {
  description = "This GCP project main region"
  type        = string
}

# <--- GCS common variables --->
variable "bucket_prefix" {
  description = "Bucket name prefix"
  type        = string
}
variable "bucket_location" {
  description = "Bucket location"
  type        = string
}

# ---------------------
# Individual variables
# ---------------------

# <--- Remote bakcend bucket --->
variable "remote_backend_bucket_name" {
  description = "Remote backend bucket name"
  type        = string
}

# <--- Artifact Registry log bucket --->
variable "artifact_registry_log_bucket_names" {
  description = "Artifact Registry bucket names"
  type        = list(string)
}

# <--- Artifact Registry Repository --->
variable "artifact_registry_repository_names" {
  description = "Artifact Registry repository names"
  type        = list(string)
}

variable "artifact_registry_repository_format" {
  description = "Artifact Registry repository formats"
  type        = string
}