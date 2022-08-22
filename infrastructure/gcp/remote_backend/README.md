<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_terraform_state_bucket"></a> [terraform\_state\_bucket](#module\_terraform\_state\_bucket) | ../../../resource/gcp/storage/gcs | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Remote backend bucket name | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | Bucket location | `string` | `""` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Bucket name prefix | `string` | `""` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | This project id | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | Bucket name |
| <a name="output_bucket_url"></a> [bucket\_url](#output\_bucket\_url) | Bucket url |
<!-- END_TF_DOCS -->