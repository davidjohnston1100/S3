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

variable "transit_gateway_attachment_ids" {
  description = ""
  type        = list(string)
  #default     = ["tgw-attach-0299516c7b365a51b", "tgw-attach-001b8fba49a7e9549"]
  default     = []
}
