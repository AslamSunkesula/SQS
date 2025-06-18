variable "name" {
  type        = string
}

variable "fifo_queue" {
  type        = bool
  default     = false
}

variable "content_based_deduplication" {
  type        = bool
  default     = true
}

variable "enable_dlq" {
  type        = bool
  default     = true
}

variable "max_receive_count" {
  type        = number
  default     = 5
}

variable "visibility_timeout_seconds" {
  type        = number
  default     = 30
}

variable "message_retention_seconds" {
  type        = number
  default     = 345600
}

variable "max_message_size" {
  type        = number
  default     = 262144
}

variable "delay_seconds" {
  type        = number
  default     = 0
}

variable "receive_wait_time_seconds" {
  type        = number
  default     = 20
}

variable "kms_master_key_id" {
  type        = string
  default     = "alias/aws/sqs"
}

variable "tags" {
  type        = map(string)
  default     = {}
}


variable "kms_master_key_id" {
  type        = string
  default     = "alias/aws/sqs"
}
