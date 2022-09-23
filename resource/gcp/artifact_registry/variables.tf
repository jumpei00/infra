variable "names" {
  description = "The last part of the repository name"
  type        = list(string)
  default     = []
}

variable "format" {
  description = "The format of packages that are stored in the repository. Supported formats can be found here. You can only create alpha formats if you are a member of the alpha user group"
  type        = string
  default     = ""
}

variable "location" {
  description = "The name of the location this repository is located in"
  type        = string
  default     = ""
}
