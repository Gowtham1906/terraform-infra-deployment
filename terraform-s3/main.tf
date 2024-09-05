terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-infra-bucket-050924"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "MyInfraBucket"
    Environment = "Testing"
  }
}
