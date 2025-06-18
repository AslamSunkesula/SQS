resource "aws_sqs_queue" "dlq" {
  count = var.enable_dlq ? 1 : 0

  name                        = var.fifo_queue ? "${var.name}-dlq.fifo" : "${var.name}-dlq"
  fifo_queue                  = var.fifo_queue
  content_based_deduplication = var.fifo_queue ? var.content_based_deduplication : null
  message_retention_seconds   = 1209600 # 14 days
  kms_master_key_id           = var.kms_master_key_id
  tags                        = var.tags
}

resource "aws_sqs_queue" "main" {
  name                        = var.fifo_queue ? "${var.name}.fifo" : var.name
  fifo_queue                  = var.fifo_queue
  content_based_deduplication = var.fifo_queue ? var.content_based_deduplication : null

  visibility_timeout_seconds  = var.visibility_timeout_seconds
  message_retention_seconds   = var.message_retention_seconds
  max_message_size            = var.max_message_size
  delay_seconds               = var.delay_seconds
  receive_wait_time_seconds   = var.receive_wait_time_seconds
  kms_master_key_id           = var.kms_master_key_id

  redrive_policy = var.enable_dlq ? jsonencode({
    deadLetterTargetArn = aws_sqs_queue.dlq[0].arn
    maxReceiveCount     = var.max_receive_count
  }) : null

  tags = var.tags
}