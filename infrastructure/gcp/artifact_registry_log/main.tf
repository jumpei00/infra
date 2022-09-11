# <--- CloudRunのログを保存するバケットを定義 ---> #
module "artifact_registry_log_bucket" {
  source = "../../../resource/gcp/gcs/"

  project_id = var.project_id

  location = var.location
  prefix   = var.prefix

  names = var.bucket_names

  versioning = {
    for name in var.bucket_names : name => true
  }
}
