variable "bucket_name" {
  description = "Name of bucket"
  type        = string
  default     = "1-15-2023-s3-testbucket9798"
}

variable "object_lock" {
  description = ""
  type        = string
  default     = "Enabled"
}

variable "versioning_configuration" {
  description = ""
  type        = string
  default     = "Enabled"
}

variable "bucket_accelerate" {
  description = ""
  type        = string
  default     = "Enabled"
}

variable "attachment_accepter" {
  description = ""
  type        = number
  default     = 1
}

variable "transit_gateway_attachment_id" {
  description = ""
  type        = string
  default     = "tgw-attach-03d035a76d4613191"
}
