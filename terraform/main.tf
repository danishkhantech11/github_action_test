# main.tf

provider "aws" {
  region = "us-east-1"  # Update with your desired AWS region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "your-unique-bucket-name"  # Update with a globally unique bucket name

  acl    = "private"

  tags = {
    Name        = "ExampleBucket"
    Environment = "Test"
  }
}
