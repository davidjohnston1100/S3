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

variable "transit_gateway_attachment_id_1" {
  description = ""
  type        = string
  default = ""
}

variable "transit_gateway_attachment_id_2" {
  description = ""
  type        = string
  default = ""
}

variable "create_attachement_accepter_1" {
  description = ""
  type        = number
  default = 1
}

variable "create_attachement_accepter_2" {
  description = ""
  type        = number
  default = 1
}
