resource "random_uuid" "bucket_postfix" {}

locals {
  bucket_name = "tfstate-${random_uuid.bucket_postfix.result}"
}

terraform {
  required_version = "1.0.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.57.0"
    }
  }
}

resource "aws_dynamodb_table" "dynamodb_terraform_state_lock" {
  name           = "terraform-state-lock"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

  server_side_encryption {
    enabled = false
  }

  tags = {
    Name = "terraform-state-lock"
  }
}

resource "aws_s3_bucket" "this" {
  bucket        = local.bucket_name
  acl           = "private"
  force_destroy = false

  # Versioning is important for being able to go back in time and repair terraform state
  versioning {
    enabled = true
  }

  tags = {
    Name = local.bucket_name
  }
}
