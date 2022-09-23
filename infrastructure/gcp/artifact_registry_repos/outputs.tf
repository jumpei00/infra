output "repository_ids" {
  description = "an identifier for the resource with format"
  value       = module.artifact_registry_repository.ids
}

output "repository_names" {
  description = "The name of the repository"
  value         = module.artifact_registry_repository.names
}
