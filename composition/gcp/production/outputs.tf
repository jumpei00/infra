# <--- Remote bakcend bucket --->
output "remote_backend_bucket_name" {
  description = "Remote backend Bucket name"
  value = module.remote_backend.bucket_name
}

output "remote_backend_bucket_url" {
  description = "Remote backend Bucket url"
  value = module.remote_backend.bucket_url
}