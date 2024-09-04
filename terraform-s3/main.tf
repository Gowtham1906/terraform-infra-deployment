provider "aws" {
  region = "us-east-1" 
}
#make changes
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-infra-bucket-040924"
  acl    = "private"
}

