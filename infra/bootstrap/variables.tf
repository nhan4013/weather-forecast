variable "weather_bucket" {
  description = "Globally-unique S3 bucket name for Terraform state"
  type        = string
}
variable "region" {
  default = "ap-southeast-1"
  type    = string
  
}
