locals {
  name_set = toset(var.names)
}

resource "google_artifact_registry_repository" "repos" {
  for_each = local.name_set

  repository_id = each.value
  format        = var.format
  location      = var.location
}
