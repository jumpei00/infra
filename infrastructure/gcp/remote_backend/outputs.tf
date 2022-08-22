output "bucket_name" {
  description = "Bucket name"
  value = module.terraform_state_bucket.name
}

output "bucket_url" {
  description = "Bucket url"
  value = module.terraform_state_bucket.url
}