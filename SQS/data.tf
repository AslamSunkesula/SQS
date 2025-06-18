data "aws_kms_alias" "sqs_kms_key" {
  name = "alias/my-sqs-key" // name of the kms key alias 
}
