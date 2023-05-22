terraform {
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }

  }

  # backend "s3" {
  #   bucket         = "devops-demo-app-state-bucket"
  #   key            = "terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "devops-demo-app-state-table"

  # }
}