terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = ">= 5.0" }
  }
}

# Primary region provider
provider "aws" {
  region  = var.primary_region
  profile = "weather"
}

# Secondary (DR) region provider
provider "aws" {
  alias   = "secondary"
  region  = var.secondary_region
  profile = "weather"
}
