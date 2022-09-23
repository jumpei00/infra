# <--- Remote bakcend bucket --->
output "remote_backend_bucket_name" {
  description = "Remote backend Bucket name"
  value       = module.remote_backend.bucket_name
}

output "remote_backend_bucket_url" {
  description = "Remote backend Bucket url"
  value       = module.remote_backend.bucket_url
}

# <--- Artifact Registry log bucket --->
output "artifact_registry_log_bucket_names" {
  description = "Artifact Registry log Bucket names"
  value       = module.artifact_registry_log.bucket_names
}

output "artifact_registry_log_bucket_urls" {
  description = "Artifact Registry log Bucket urls"
  value       = module.artifact_registry_log.bucket_urls
}

# <--- Artifact Registry Repository --->
output "cloudrun_docker_image_repository_ids" {
  description = "an identifier for the resource with format"
  value       = module.cloudrun_docker_image_repository.repository_ids
}

output "cloudrun_docker_image_repository_names" {
  description = "The name of the repository"
  value       = module.cloudrun_docker_image_repository.repository_names
}
