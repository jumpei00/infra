<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_artifact_registry_repository"></a> [artifact\_registry\_repository](#module\_artifact\_registry\_repository) | ../../../resource/gcp/artifact_registry/ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The name of the location this repository is located in | `string` | `""` | no |
| <a name="input_repository_format"></a> [repository\_format](#input\_repository\_format) | The format of packages that are stored in the repository. Supported formats can be found here. You can only create alpha formats if you are a member of the alpha user group | `string` | `""` | no |
| <a name="input_repository_names"></a> [repository\_names](#input\_repository\_names) | The last part of the repository name | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repository_ids"></a> [repository\_ids](#output\_repository\_ids) | an identifier for the resource with format |
| <a name="output_repository_names"></a> [repository\_names](#output\_repository\_names) | The name of the repository |
<!-- END_TF_DOCS -->