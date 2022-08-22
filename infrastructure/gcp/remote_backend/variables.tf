variable "project_id" {
  description = "This project id"
  type        = string
  default     = ""
}

variable "location" {
  description = "Bucket location"
  type        = string
  default     = ""
}

variable "prefix" {
  description = "Bucket name prefix"
  type        = string
  default     = ""
}

variable "bucket_name" {
  description = "Remote backend bucket name"
  type        = string
  default     = ""
}

