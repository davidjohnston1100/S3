variable "bucket_name" {
  description = "Name of bucket"
  type        = string
  default     = ""
}

variable "object_lock" {
  description = ""
  type        = string
  default     = ""Enabled""
}

variable "versioning_configuration" {
  description = ""
  type        = string
  default     = ""Enabled""
}

variable "bucket_accelerate" {
  description = ""
  type        = string
  default     = ""Enabled""
}

