module "remote_backend" {
  source = "../../../infrastructure/gcp/remote_backend"

  project_id = var.project

  location = var.bucket_location
  prefix   = var.bucket_prefix

  bucket_name = var.remote_backend_bucket_name
}

module "artifact_registry_log" {
  source = "../../../infrastructure/gcp/artifact_registry_log"

  project_id = var.project

  location = var.bucket_location
  prefix   = var.bucket_prefix

  bucket_names = var.artifact_registry_log_bucket_names
}

module "cloudrun_docker_image_repository" {
  source = "../../../infrastructure/gcp/artifact_registry_repos/"

  repository_names  = var.artifact_registry_repository_names
  repository_format = var.artifact_registry_repository_format
  location          = var.region
}
