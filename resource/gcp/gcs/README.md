<!-- BEGIN_TF_DOCS -->
Copyright 2019 Google LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.33.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.3.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_storage_bucket.buckets](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |
| [google_storage_bucket_iam_binding.admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_binding) | resource |
| [google_storage_bucket_iam_binding.creators](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_binding) | resource |
| [google_storage_bucket_iam_binding.hmac_key_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_binding) | resource |
| [google_storage_bucket_iam_binding.storage_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_binding) | resource |
| [google_storage_bucket_iam_binding.viewers](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_binding) | resource |
| [google_storage_bucket_object.folders](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) | resource |
| [random_id.bucket_suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admins"></a> [admins](#input\_admins) | IAM-style members who will be granted roles/storage.objectAdmin on all buckets. | `list(string)` | `[]` | no |
| <a name="input_bucket_admins"></a> [bucket\_admins](#input\_bucket\_admins) | Map of lowercase unprefixed name => comma-delimited IAM-style per-bucket admins. | `map(string)` | `{}` | no |
| <a name="input_bucket_creators"></a> [bucket\_creators](#input\_bucket\_creators) | Map of lowercase unprefixed name => comma-delimited IAM-style per-bucket creators. | `map(string)` | `{}` | no |
| <a name="input_bucket_hmac_key_admins"></a> [bucket\_hmac\_key\_admins](#input\_bucket\_hmac\_key\_admins) | Map of lowercase unprefixed name => comma-delimited IAM-style per-bucket HMAC Key admins. | `map(string)` | `{}` | no |
| <a name="input_bucket_policy_only"></a> [bucket\_policy\_only](#input\_bucket\_policy\_only) | Disable ad-hoc ACLs on specified buckets. Defaults to true. Map of lowercase unprefixed name => boolean | `map(bool)` | `{}` | no |
| <a name="input_bucket_storage_admins"></a> [bucket\_storage\_admins](#input\_bucket\_storage\_admins) | Map of lowercase unprefixed name => comma-delimited IAM-style per-bucket storage admins. | `map(string)` | `{}` | no |
| <a name="input_bucket_viewers"></a> [bucket\_viewers](#input\_bucket\_viewers) | Map of lowercase unprefixed name => comma-delimited IAM-style per-bucket viewers. | `map(string)` | `{}` | no |
| <a name="input_cors"></a> [cors](#input\_cors) | Set of maps of mixed type attributes for CORS values. See appropriate attribute types here: https://www.terraform.io/docs/providers/google/r/storage_bucket.html#cors | `set(any)` | `[]` | no |
| <a name="input_creators"></a> [creators](#input\_creators) | IAM-style members who will be granted roles/storage.objectCreators on all buckets. | `list(string)` | `[]` | no |
| <a name="input_default_event_based_hold"></a> [default\_event\_based\_hold](#input\_default\_event\_based\_hold) | Enable event based hold to new objects added to specific bucket. Defaults to false. Map of lowercase unprefixed name => boolean | `map(bool)` | `{}` | no |
| <a name="input_encryption_key_names"></a> [encryption\_key\_names](#input\_encryption\_key\_names) | Optional map of lowercase unprefixed name => string, empty strings are ignored. | `map(string)` | `{}` | no |
| <a name="input_folders"></a> [folders](#input\_folders) | Map of lowercase unprefixed name => list of top level folder objects. | `map(list(string))` | `{}` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | Optional map of lowercase unprefixed name => boolean, defaults to false. | `map(bool)` | `{}` | no |
| <a name="input_hmac_key_admins"></a> [hmac\_key\_admins](#input\_hmac\_key\_admins) | IAM-style members who will be granted roles/storage.hmacKeyAdmin on all buckets. | `list(string)` | `[]` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to be attached to the buckets | `map(string)` | `{}` | no |
| <a name="input_lifecycle_rules"></a> [lifecycle\_rules](#input\_lifecycle\_rules) | List of lifecycle rules to configure. Format is the same as described in provider documentation https://www.terraform.io/docs/providers/google/r/storage_bucket.html#lifecycle_rule except condition.matches\_storage\_class should be a comma delimited string. | <pre>set(object({<br>    # Object with keys:<br>    # - type - The type of the action of this Lifecycle Rule. Supported values: Delete and SetStorageClass.<br>    # - storage_class - (Required if action type is SetStorageClass) The target Storage Class of objects affected by this Lifecycle Rule.<br>    action = map(string)<br><br>    # Object with keys:<br>    # - age - (Optional) Minimum age of an object in days to satisfy this condition.<br>    # - created_before - (Optional) Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.<br>    # - with_state - (Optional) Match to live and/or archived objects. Supported values include: "LIVE", "ARCHIVED", "ANY".<br>    # - matches_storage_class - (Optional) Comma delimited string for storage class of objects to satisfy this condition. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, STANDARD, DURABLE_REDUCED_AVAILABILITY.<br>    # - num_newer_versions - (Optional) Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition.<br>    # - custom_time_before - (Optional) A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when the customTime metadata for the object is set to an earlier date than the date used in this lifecycle condition.<br>    # - days_since_custom_time - (Optional) The number of days from the Custom-Time metadata attribute after which this condition becomes true.<br>    # - days_since_noncurrent_time - (Optional) Relevant only for versioned objects. Number of days elapsed since the noncurrent timestamp of an object.<br>    # - noncurrent_time_before - (Optional) Relevant only for versioned objects. The date in RFC 3339 (e.g. 2017-06-13) when the object became nonconcurrent.<br>    condition = map(string)<br>  }))</pre> | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | Bucket location. | `string` | `"EU"` | no |
| <a name="input_logging"></a> [logging](#input\_logging) | Map of lowercase unprefixed name => bucket logging config object. Format is the same as described in provider documentation https://www.terraform.io/docs/providers/google/r/storage_bucket.html#logging | `any` | `{}` | no |
| <a name="input_names"></a> [names](#input\_names) | Bucket name suffixes. | `list(string)` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Prefix used to generate the bucket name. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Bucket project id. | `string` | n/a | yes |
| <a name="input_randomize_suffix"></a> [randomize\_suffix](#input\_randomize\_suffix) | Adds an identical, but randomized 4-character suffix to all bucket names | `bool` | `false` | no |
| <a name="input_retention_policy"></a> [retention\_policy](#input\_retention\_policy) | Map of retention policy values. Format is the same as described in provider documentation https://www.terraform.io/docs/providers/google/r/storage_bucket#retention_policy | `any` | `{}` | no |
| <a name="input_set_admin_roles"></a> [set\_admin\_roles](#input\_set\_admin\_roles) | Grant roles/storage.objectAdmin role to admins and bucket\_admins. | `bool` | `false` | no |
| <a name="input_set_creator_roles"></a> [set\_creator\_roles](#input\_set\_creator\_roles) | Grant roles/storage.objectCreator role to creators and bucket\_creators. | `bool` | `false` | no |
| <a name="input_set_hmac_key_admin_roles"></a> [set\_hmac\_key\_admin\_roles](#input\_set\_hmac\_key\_admin\_roles) | Grant roles/storage.hmacKeyAdmin role to hmac\_key\_admins and bucket\_hmac\_key\_admins. | `bool` | `false` | no |
| <a name="input_set_storage_admin_roles"></a> [set\_storage\_admin\_roles](#input\_set\_storage\_admin\_roles) | Grant roles/storage.admin role to storage\_admins and bucket\_storage\_admins. | `bool` | `false` | no |
| <a name="input_set_viewer_roles"></a> [set\_viewer\_roles](#input\_set\_viewer\_roles) | Grant roles/storage.objectViewer role to viewers and bucket\_viewers. | `bool` | `false` | no |
| <a name="input_storage_admins"></a> [storage\_admins](#input\_storage\_admins) | IAM-style members who will be granted roles/storage.admin on all buckets. | `list(string)` | `[]` | no |
| <a name="input_storage_class"></a> [storage\_class](#input\_storage\_class) | Bucket storage class. | `string` | `"STANDARD"` | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | Optional map of lowercase unprefixed name => boolean, defaults to false. | `map(bool)` | `{}` | no |
| <a name="input_viewers"></a> [viewers](#input\_viewers) | IAM-style members who will be granted roles/storage.objectViewer on all buckets. | `list(string)` | `[]` | no |
| <a name="input_website"></a> [website](#input\_website) | Map of website values. Supported attributes: main\_page\_suffix, not\_found\_page | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket"></a> [bucket](#output\_bucket) | Bucket resource (for single use). |
| <a name="output_buckets"></a> [buckets](#output\_buckets) | Bucket resources as list. |
| <a name="output_buckets_map"></a> [buckets\_map](#output\_buckets\_map) | Bucket resources by name. |
| <a name="output_name"></a> [name](#output\_name) | Bucket name (for single use). |
| <a name="output_names"></a> [names](#output\_names) | Bucket names. |
| <a name="output_names_list"></a> [names\_list](#output\_names\_list) | List of bucket names. |
| <a name="output_url"></a> [url](#output\_url) | Bucket URL (for single use). |
| <a name="output_urls"></a> [urls](#output\_urls) | Bucket URLs. |
| <a name="output_urls_list"></a> [urls\_list](#output\_urls\_list) | List of bucket URLs. |
<!-- END_TF_DOCS -->