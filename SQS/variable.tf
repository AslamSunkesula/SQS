variable "name" {
  description = "Base name of the SQS queue"
  type        = string
}

variable "fifo_queue" {
  description = "Whether to create a FIFO queue"
  type        = bool
  default     = false
}

variable "content_based_deduplication" {
  description = "Enable content-based deduplication for FIFO queue"
  type        = bool
  default     = true
}

variable "enable_dlq" {
  description = "Whether to create and attach a Dead Letter Queue"
  type        = bool
  default     = true
}

variable "max_receive_count" {
  description = "Max times a message is received before moving to DLQ"
  type        = number
  default     = 5
}

variable "visibility_timeout_seconds" {
  description = "Seconds a message is invisible after being read"
  type        = number
  default     = 30
}

variable "message_retention_seconds" {
  description = "How long to retain messages in seconds"
  type        = number
  default     = 345600
}

variable "max_message_size" {
  description = "Max size of the message in bytes"
  type        = number
  default     = 262144
}

variable "delay_seconds" {
  description = "Delay before the message is visible"
  type        = number
  default     = 0
}

variable "receive_wait_time_seconds" {
  description = "Wait time for long polling"
  type        = number
  default     = 20
}

variable "kms_master_key_id" {
  description = "KMS key ID for encryption. Use 'alias/aws/sqs' for default."
  type        = string
  default     = "alias/aws/sqs"
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}


variable "kms_master_key_id" {
  description = "KMS key ID or alias (e.g., alias/aws/sqs or key ARN)"
  type        = string
  default     = "alias/aws/sqs"
}