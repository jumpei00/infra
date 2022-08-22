module "remote_backend" {
  source = "../../../infrastructure/gcp/remote_backend"

  project_id = var.project

  location = var.bucket_location
  prefix = var.bucket_prefix
  
  bucket_name = var.remote_backend_bucket_name
}
