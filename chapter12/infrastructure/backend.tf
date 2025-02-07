#############################
# TERRAFORM BACKEND (S3 + DDB)
#############################
terraform {
  backend "s3" {
    bucket         = var.s3_bucket_name
    key            = "network-firewall/terraform.tfstate"
    region         = var.aws_region
    encrypt        = true
    dynamodb_table = var.dynamodb_table_name
  }
}