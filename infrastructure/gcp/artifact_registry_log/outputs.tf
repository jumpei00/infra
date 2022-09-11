output "bucket_names" {
  description = "Bucket names"
  value = module.artifact_registry_log_bucket.names
}

output "bucket_urls" {
  description = "Bucket urls"
  value = module.artifact_registry_log_bucket.urls
}