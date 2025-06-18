module "standard_queue" {
  source      = "../modules/sqs" //local path to the SQS module 
  name        = "my-standard-queue"
  kms_master_key_id = data.aws_kms_alias.sqs_kms_key.target_key_id
  fifo_queue  = false
  enable_dlq  = true
  tags = {
    Environment = "production"
    Project     = "myapp"
  }
}

module "fifo_queue_with_dlq" {
  source      = "../modules/sqs" //local path to the SQS module 
  name        = "my-fifo-queue"
  kms_master_key_id = data.aws_kms_alias.sqs_kms_key.target_key_id
  fifo_queue  = true
  enable_dlq  = true
  tags = {
    Environment = "production"
    Project     = "myapp"
  }
}
