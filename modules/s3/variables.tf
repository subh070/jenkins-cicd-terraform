variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}

variable "force_destroy" {
  description = "Allow deleting non-empty bucket"
  type        = bool
}