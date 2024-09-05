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
  access_key  = "AKIAU6GD336HXZR2T2GZ"
  secret_key  = "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"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-infra-bucket-890new"

  tags = {
    Name        = "MyInfraBucket"
    Environment = "Testing"
  }
}
