provider "aws" {
  region              = "us-east-1"
  allowed_account_ids = [var.allowed_account_id]

  default_tags {
    tags = {
      Environment = "stage"
      ManagedBy   = "terraform"
      Repo        = "https://github.com/walkerab/terraform-plus-github-actions"
    }
  }
}
