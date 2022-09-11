<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.32.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_artifact_registry_log"></a> [artifact\_registry\_log](#module\_artifact\_registry\_log) | ../../../infrastructure/gcp/artifact_registry_log | n/a |
| <a name="module_remote_backend"></a> [remote\_backend](#module\_remote\_backend) | ../../../infrastructure/gcp/remote_backend | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_artifact_registry_log_bucket_names"></a> [artifact\_registry\_log\_bucket\_names](#input\_artifact\_registry\_log\_bucket\_names) | Artifact Registry bucket names | `list(string)` | n/a | yes |
| <a name="input_bucket_location"></a> [bucket\_location](#input\_bucket\_location) | Bucket location | `string` | n/a | yes |
| <a name="input_bucket_prefix"></a> [bucket\_prefix](#input\_bucket\_prefix) | Bucket name prefix | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | This GCP project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | This GCP project main region | `string` | n/a | yes |
| <a name="input_remote_backend_bucket_name"></a> [remote\_backend\_bucket\_name](#input\_remote\_backend\_bucket\_name) | Remote backend bucket name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_artifact_registry_log_bucket_names"></a> [artifact\_registry\_log\_bucket\_names](#output\_artifact\_registry\_log\_bucket\_names) | Artifact Registry log Bucket names |
| <a name="output_artifact_registry_log_bucket_urls"></a> [artifact\_registry\_log\_bucket\_urls](#output\_artifact\_registry\_log\_bucket\_urls) | Artifact Registry log Bucket urls |
| <a name="output_remote_backend_bucket_name"></a> [remote\_backend\_bucket\_name](#output\_remote\_backend\_bucket\_name) | Remote backend Bucket name |
| <a name="output_remote_backend_bucket_url"></a> [remote\_backend\_bucket\_url](#output\_remote\_backend\_bucket\_url) | Remote backend Bucket url |
<!-- END_TF_DOCS -->