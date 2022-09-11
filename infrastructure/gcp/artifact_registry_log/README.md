<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_artifact_registry_log_bucket"></a> [artifact\_registry\_log\_bucket](#module\_artifact\_registry\_log\_bucket) | ../../../resource/gcp/gcs/ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_names"></a> [bucket\_names](#input\_bucket\_names) | Remote backend bucket name | `list(string)` | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | Bucket location | `string` | `""` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Bucket name prefix | `string` | `""` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | This project id | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_names"></a> [bucket\_names](#output\_bucket\_names) | Bucket names |
| <a name="output_bucket_urls"></a> [bucket\_urls](#output\_bucket\_urls) | Bucket urls |
<!-- END_TF_DOCS -->