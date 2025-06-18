output "queue_name" {
  value       = aws_sqs_queue.main.name
  description = "The name of the SQS queue"
}

output "queue_url" {
  value       = aws_sqs_queue.main.id
  description = "The URL of the SQS queue"
}

output "queue_arn" {
  value       = aws_sqs_queue.main.arn
  description = "The ARN of the SQS queue"
}

output "dlq_name" {
  value       = var.enable_dlq ? aws_sqs_queue.dlq[0].name : null
  description = "The name of the DLQ (if enabled)"
}

output "dlq_arn" {
  value       = var.enable_dlq ? aws_sqs_queue.dlq[0].arn : null
  description = "The ARN of the DLQ (if enabled)"
}

output "dlq_url" {
  value       = var.enable_dlq ? aws_sqs_queue.dlq[0].id : null
  description = "The URL of the DLQ (if enabled)"
}