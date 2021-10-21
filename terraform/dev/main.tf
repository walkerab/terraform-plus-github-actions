terraform {
  required_version = "1.0.9"

  backend "s3" {
    bucket         = "terraform-plus-github-actions-tfstate"
    key            = "dev.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.57.0"
    }
  }
}