<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_artifact_registry_repository.repos](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_format"></a> [format](#input\_format) | The format of packages that are stored in the repository. Supported formats can be found here. You can only create alpha formats if you are a member of the alpha user group | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | The name of the location this repository is located in | `string` | `""` | no |
| <a name="input_names"></a> [names](#input\_names) | The last part of the repository name | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_create_time"></a> [create\_time](#output\_create\_time) | The time when the repository was created |
| <a name="output_ids"></a> [ids](#output\_ids) | an identifier for the resource with format projects/{{project}}/locations/{{location}}/repositories/{{repository\_id}} |
| <a name="output_names"></a> [names](#output\_names) | The name of the repository, for example: projects/p1/locations/us-central1/repositories/repo1 |
| <a name="output_update_time"></a> [update\_time](#output\_update\_time) | The time when the repository was last updated |
<!-- END_TF_DOCS -->