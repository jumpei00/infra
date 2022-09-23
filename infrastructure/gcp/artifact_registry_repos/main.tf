module "artifact_registry_repository" {
  source = "../../../resource/gcp/artifact_registry/"

  names    = var.repository_names
  format   = var.repository_format
  location = var.location
}
