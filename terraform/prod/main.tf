terraform {
  required_version = "1.0.9"

  backend "s3" {
    bucket         = "tfstate-289d53ee-aadb-82b7-3c1b-f6ff95aaef2c"
    key            = "prod.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.57.0"
    }
  }
}
