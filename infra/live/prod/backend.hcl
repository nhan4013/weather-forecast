bucket         = "my-weather-tf-state-12345"   # from bootstrap output
key            = "prod/terraform.tfstate"
region         = "ap-southeast-1"
dynamodb_table = "terraform-locks"
encrypt        = true
