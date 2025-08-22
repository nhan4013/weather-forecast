terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = ">= 5.0" }
  }
}

provider "aws" {
  region  = var.region
}

resource "aws_s3_bucket" "state" {
  bucket = var.weather_bucket
}

resource "aws_s3_bucket_versioning" "state" {
  bucket = aws_s3_bucket.state.id
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "state" {
  bucket = aws_s3_bucket.state.id
  rule {
    apply_server_side_encryption_by_default { sse_algorithm = "AES256" }
  }
}

resource "aws_dynamodb_table" "locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
  name = "LockID"
  type = "S"
}
}

output "state_bucket" { value = aws_s3_bucket.state.bucket }
output "lock_table"   { value = aws_dynamodb_table.locks.name }




resource "aws_ecr_repository" "weather_repo" {
  name = "the-weather-forecasting"
}


