data "aws_kms_alias" "sqs_kms_key" {
  name = "alias/my-sqs-key"
}